require 'json'
require 'open-uri'
require 'yaml'

# Yhoo!ジオコーダAPIを使って住所から経緯度を取得
class Geocoder
  def initialize()
    @client_id = YAML.load_file('config.yml')['geocoder']['client_id']
  end

  def lonlat(query)
    base_url = 'https://map.yahooapis.jp/geocode/V1/geoCoder'
    params = {
      'appid' => @client_id,
      'query' => query,
      'results' => '1',
      'output' => 'json',
    }
    url = base_url + '?' + URI.encode_www_form(params)

    res = JSON.parse(open(url).read)
    res['Feature'][0]['Geometry']['Coordinates'].split(',')
  end
end
