# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- | 
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| name               | string  | null: false               |
| name_katakana      | string  | null: false               |
| birthday_year      | integer | null: false               |
| birthday_month     | integer | null: false               |
| birthday_day       | integer | null: false               |


### Association

- has_many :items
- has_many :purchases

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| item_name     | string     | null: false                    |
| description   | text       | null: false                    |
| category      | integer    | null: false                    |
| shipping_fee  | integer    | null: false                    |
| ship_from     | integer    | null: false                    |
| shipping_date | integer    | null: false                    |
| price         | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase

## purchases テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :address

## addresses テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| post_code    | integer    | null: false                    |
| prefecture   | string     | null: false                    |
| city         | string     | null: false                    |
| building     | string     |                                |
| phone_number | integer    | null: false                    |

### Association

- belongs_to :purchase
