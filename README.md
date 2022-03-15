# README

## 課題
```
spec/requests/api/v1/products_spec.rbのテストが落ちているので、
JSON形式でデータがレスポンスされるように、
app/controllers/api/v1/products_controller.rbを修正、
もしくは、新たにviewファイルを追加し、テストの通過を確認してください。
必要な場合はgemをインストールしてください。
ER図は、docs/erd.pdfを参照してください。
```

## Build
```
$ docker-compose build
```


## Database creation
```
$ docker-compose run --rm web bin/rails db:create
```

## Database initialization
```
$ docker-compose run --rm web bin/rails db:migrate
```

## How to run the test suite
```
$ docker-compose run --rm web bundle exec rspec spec/requests/api/v1/products_spec.rb
```
