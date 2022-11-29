# README
# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |


### Association
- has_many: orders
- has_many: items


## vehiclesテーブル

| Column          | Type       | Options                        |
|---------------- | ---------- | ------------------------------ |
| manufacturer    | string     | null: false                    |
| vehicle_name    | text       | null: false                    |
| next_inspection | integer    |                                |
| user            | references | null: false, foreign_key: true |
| vehicle_type_id | integer    | null: false                    |

### Association

- has_many: vehicles_fixes
- belongs_to: user
- belongs_to: vehicle_type
- has_one_attached: image


## vehicles_fixesテーブル

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
- belongs_to: vehicles
- belongs_to: fix_spot
- has_one_attached: image

