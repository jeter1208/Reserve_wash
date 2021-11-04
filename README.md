# 衣級棒-新北三重預約系統
## 使用技術
語言: Ruby version 2.6.3

框架: Rails 6.1.4

CSS: Tailwindcss

資料庫: PGSQL

版本控制: Git/Github

部署: Heroku

## 功能介紹

Rails Action Mailer發信

當客戶新增表單時使用sidekiq控制發信時間

後台更新表單狀態

google三方登入

提供客戶更佳的預約方式，能夠透過會員系統保留客戶資料，並且記錄客戶清洗時間，讓後續需要查詢資料更方便，當客戶填單完成能夠及時發信通知，待工作告一段落時與客戶進行聯繫，讓客戶自行選擇所想要的時間再進行後續的溝通聯絡。

## 如何開啟
```
bundle
```
```
yarn
```
```
rails db:create
```
```
rails db:migrate
```
```
foreman s
```
