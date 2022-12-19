# README
# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


### Association
- has_many: vehicles
- has_many: vehicle_fixes


## vehiclesテーブル

| Column          | Type       | Options                        |
|---------------- | ---------- | ------------------------------ |
| manufacturer    | string     | null: false                    |
| vehicle_name    | text       | null: false                    |
| next_inspection | integer    |                                |
| user            | references | null: false, foreign_key: true |
| vehicle_type_id | integer    | null: false                    |

### Association

- has_many: vehicle_fixes
- belongs_to: user
- belongs_to: vehicle_type
- has_one_attached: image


## vehicle_fixesテーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| title       | string     | null: false                    |
| content     | text       | null: false                    |
| mileage     | string     |                                |
| fix_spot_id | integer    | null: false                    |
| user        | references | null: false, foreign_key: true |
| vehicle     | references | null: false, foreign_key: true |

### Association

- belongs_to: user
- belongs_to: vehicle
- belongs_to: fix_spot
- has_many_attached: images


# アプリケーション名
Vehicles Fix App

# アプリケーション概要
車やバイク、その他機械の修理記録を保存するアプリで直感的に記録が可能である。
# URL
https://vehiclesfixapp.onrender.com

# テスト用アカウント
  ・Basic認証パスワード：2222

  ・Basic認証ID：admin

  ・メールアドレス：test@com

  ・パスワード：test123

# 利用方法
## ユーザー登録をすることにより以下のことが可能になる。

### ・車両登録
1.左上の『Register Your Vehicle』をクリックすることにより車両登録画面に変遷し、可能になる。

2.車両登録画面から『車両画像、メーカー、車両名、車両形式、次回車検年月（任意）』を入力し登録をする。

3.登録をすると車両一覧画面に変遷し、登録される。

4.記述を変える際には登録車両の下の『Edit Information』をクリックすると車両編集画面に変遷する。

5.車両の部分をクリックすることにより、車両修理内容一覧へ変遷する

### ・車両の修理情報登録
1.左上の『Register Your Repair Details』をクリックすることにより車両修理情報登録画面に変遷し、可能になる。

2.車両修理情報登録画面から『変更箇所画像画像（任意）、タイトル、詳細内容、走行距離（任意）』を入力し登録をする。

3.登録をすると車両修理情報一覧画面に変遷し、登録される。

4.記述を変える際には車両修理情報のタイトル下の『Edit Information』をクリックすると車両修理情報編集画面に変遷する。

# アプリケーションを作成した背景
私の趣味はバイクや車、機械などの修理であり、その修理記録をつける際にメモアプリで代用していたが、過去の修理記録を見る際に
とても見づらく、直感的に過去の修理記録を調べることができないことが課題であった。
よって、その課題を解決するために直感的に過去の修理情報などを見ることができるアプリを開発を行なった。

# 洗い出した要件
https://docs.google.com/document/d/1tE56WylMXXLWoJVe-oq2JuOHht-pQE77F7V4VzfHvAk/edit?usp=sharing

# 実装した機能についての画像やGIFおよびその説明
## ユーザー登録画面
・登録しているユーサーはここからログイン

・登録をしていないユーザーは『Sign up』から新規登録を行う
[![Image from Gyazo](https://i.gyazo.com/bc19940b85b4ec7c2487e50fee6cc265.png)](https://gyazo.com/bc19940b85b4ec7c2487e50fee6cc265)

## 登録車両一覧画面
・登録された車両が一覧表示される
[![Image from Gyazo](https://i.gyazo.com/350abadc554ba8af209847d3542a24ae.gif)](https://gyazo.com/350abadc554ba8af209847d3542a24ae)

## 車両登録画面
・『Register Your Vehicle』をクリックすることにより車両登録画面へ変遷する
[![Image from Gyazo](https://i.gyazo.com/7e54284006a4a3616066e89fc41907d4.gif)](https://gyazo.com/7e54284006a4a3616066e89fc41907d4)

## 登録車両編集画面
・車両の下部の『Edit information』をクリックすることにより登録車両の編集画面に変遷し、編集および削除ができる。
[![Image from Gyazo](https://i.gyazo.com/226e12be1a7bee63b967a076fb48a301.gif)](https://gyazo.com/226e12be1a7bee63b967a076fb48a301)

## 車両修理情報一覧画面
・登録車両一覧画面から車両をクリックすると車両修理情報一覧画面へ変遷する。
[![Image from Gyazo](https://i.gyazo.com/5d1b04f223806e781b529180278dd2d5.gif)](https://gyazo.com/5d1b04f223806e781b529180278dd2d5)

## 車両修理情報登録画面
・『Register Your Repair Details』をクリックすることにより車両修理情報登録画面へ変遷する
[![Image from Gyazo](https://i.gyazo.com/977c7abffc3dad8feacea1a9f2f31b92.gif)](https://gyazo.com/977c7abffc3dad8feacea1a9f2f31b92)

## 車両修理情報編集画面
・車両修理情報のタイトル下の『Edit information』をクリックすることにより車両修理情報の編集画面に変遷し、編集および削除ができる。
[![Image from Gyazo](https://i.gyazo.com/fdf4440f8bc8d41c884fad679342ec7d.gif)](https://gyazo.com/fdf4440f8bc8d41c884fad679342ec7d)


# 実装予定の機能
現在は、車両修理情報の修理部分のActiveHashを実装中
今後は検索機能の充実や、ユーザー情報編集、ログイン時のSNS認証などを実装予定

また、現在バイク屋で働いている友人にベータ版として使用してもらい追加してほしい機能などをヒアリング中である。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/a280e079904ed548cee01f400813ed54.png)](https://gyazo.com/a280e079904ed548cee01f400813ed54)
# 画面変遷図
[![Image from Gyazo](https://i.gyazo.com/213c3f8cbaf5bca8ebc01a2cd3a01a24.png)](https://gyazo.com/213c3f8cbaf5bca8ebc01a2cd3a01a24)
# 開発環境
・HTML

・CSS

・JavaScript

・Ruby

・Ruby on Rails

・AWS

・render

・PostgreSQL

・Github

# ローカルでの動作方法
% git clone https://github.com/RyoE46/VehiclesFixApp.git

% cd VehiclesFixApp

% bundle install

% yarn install

# 工夫したポイント
・ログインしたユーザーにのみに限定してあり、ユーザーごとに車両情報や修理内容を管理している点

・登録した車両と修理内容をリンクさせるためにネストを行い情報を管理しているため、車両情報が削除された場合に修理内容も削除されるように設定を行った点

・登録情報に汎用性を持たせるために修理情報に関する部分にはあまり制約を持たせていない点

・直感的に操作しやすいようクリックする部分の工夫や、間違えて消してしまわないように削除ボタンを離した点

・情報が見やすくなるよう重要な部分の情報を強調させた点