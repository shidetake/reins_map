# reins_map
[REINS Market Information](http://www.contract.reins.or.jp)から売買情報を取得して、
その情報をGoogle Mapにインポートできる形式で保存するスクリプト。

# スクリーンショット
![image](https://ift.tt/2BIyBPp)

# 使い方
## Gem install
```bash
$ bundle install
```

## Yahoo!ジオコーダAPI登録
登録方法は以下を参考にする。
Client IDを取得したら、`config.yml`に書き込む。

http://shidetake.com/geoapi/

## 条件設定
`config.yml`にサンプルを記載しているので、
それをもとに適宜変更する。
複数セットの条件が設定可能（サンプルは2条件）。

現在設定可能な条件は、
- 都道府県
- 地域
- 地域詳細
- 駅からの距離
- 間取り

## kmlファイル生成
```bash
$ bundle exec ruby reins_map.rb
```

## kmlファイルインポート
`map.kml`というファイルが生成されるので、
これをGoogle Mapにインポートする。
