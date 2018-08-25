require 'capybara'
require 'capybara/dsl'
require 'capybara-webkit'
require 'yaml'
require_relative 'kml_template'
require_relative 'geocoder'

# REINSからマンションの売買情報を取得し、マップ情報に変換する
class ReinsMap
  HTML_RENDERING_WAIT = 10
  include Capybara::DSL

  def initialize()
    Capybara.default_selector = :xpath
    Capybara.default_driver = :selenium
    Capybara.app_host = 'http://www.contract.reins.or.jp/search/displayAreaConditionBLogic.do'
    @rooms = []
  end

  def exec
    configs = YAML.load_file('config.yml')

    # 設定の数だけ回す
    configs['search_condition'].each do |config|
      crawle(config)
    end

    create_kml
  end

  private

  # クロールする
  def crawle(config)
    visit('')

    # 地域を選択する
    select(config['prefCodeA'], :from => 'prefCodeA')
    select(config['areaCodeA'], :from => 'areaCodeA')
    click_on('検索する')

    # OKボタン
    page.driver.browser.switch_to.alert.accept

    # HTML取得待ち
    sleep HTML_RENDERING_WAIT

    # 追加検索条件
    select(config['areaDescCode'], :from => 'areaDescCode')
    check('walk05') if config['walk05']
    check('walk10') if config['walk10']
    check('room02') if config['room02']
    check('room03') if config['room10']
    select(config['buildYearNoCode'], :from => 'buildYearNoCode')
    click_on('検索する')

    # HTML取得待ち
    sleep HTML_RENDERING_WAIT

    # ページ番号の取得
    get_pages
    
    # ページごとに全データを取得する
    @pages.size.times do |i|
      page_change(i)
      scrape
    end

    # 経緯度を付加
    @rooms.map! do |elm|
      elm['lon'], elm['lat'] = lonlat(elm['address'])
      elm
    end
  end

  # 物件情報を取得
  def scrape
    hash_elms = ['id', 'railway', 'station', 'dist',
                 'address', 'price', 'area', 'layout',
                 'age', 'date', 'type']
    all("//*[@id='data05']/div[2]/table/tbody/tr").each do |element|
      if element.text !~ /^.*沿線/
        # 物件情報の取得
        ary = [hash_elms, element.text.gsub(/(から|～)[\r\n]/, '\1').split].transpose
        @rooms.push(Hash[*ary.flatten])
      end
    end
  end

  # 物件情報のページ数を取得
  def get_pages
    @pages = []
    all("//*[@id='data05']/div[1]/select/option").each do |element|
      @pages.push(element.text)
    end
  end

  # ページ遷移
  # @param [Integer] page_num ページ番号
  def page_change(page_num)
    select(@pages[page_num], :from => 'listPageNum')
  end

  # 住所から経緯度を取得
  # @param [String] address 住所
  # @return [String] 経緯度
  def lonlat(address)
    geocoder = Geocoder.new
    geocoder.lonlat(address)
  end

  # kmlファイルを生成
  def create_kml
    kml = $kml_header
    @rooms.each do |room|
      # ピン情報にインデントと改行をつけて挿入
      kml += "      " + pin(room) + "\n"
    end
    kml += $kml_footer
    File.write("map.kml", kml)
  end

  # 物件ごとにピンを作成
  # @param [Hash] room 1件分の情報
  # @return [String] kml形式のピン情報
  def pin(room)
    name = "<name>#{room['address']}</name>"
    style_url = "<styleUrl>"
    style_url +=
    if    110 <= room['price'].to_i then '#110'
    elsif 100 <= room['price'].to_i then '#100'
    elsif  90 <= room['price'].to_i then '#90'
    elsif  80 <= room['price'].to_i then '#80'
    elsif  70 <= room['price'].to_i then '#70'
    elsif  60 <= room['price'].to_i then '#60'
    else                                 '#50'
    end
    style_url += "</styleUrl>"
    coordinates = "<Point><coordinates>#{room['lon']},#{room['lat']}</coordinates></Point>"
    "<Placemark>#{name}#{style_url}#{coordinates}</Placemark>"
  end
end

reins_map = ReinsMap.new
reins_map.exec
