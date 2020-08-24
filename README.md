## users テーブル

| Column           | Type      | options     |
| ---------------- | --------- | ------------|
| nickname         | string    | null: false |
| email            | string    | null: false |
| password         | string    | null: false |
| first_name       | string    | null: false |
| family_name      | string    | null: false |
| first_name_kana  | string    | null: false |
| family_name_kana | string    | null: false |
| birth_year       | integer   | null: false |
| birth_month      | integer   | null: false |
| birth_day        | integer   | null: false |


### association
- has_many : trade_information
- has_many : items



##　items テーブル

| Column    | Type      | options      |
| --------  | --------- | ------------ |
| name      | string    | null: false |
| text      | text      | null: false |
| item_img  | string    | null: false |
| price     | integer   | null: false |
| user      | reference | foreign_key: true  |

### association
- belongs_to: users


## destinations テーブル

| Column                       | Type      | options       |
| --------------------         | --------- | --------------|
| post_cord                    | string     | null: false |
| prefecture                   | string     | null: false |
| city                         | string     | null: false |
| house_number                 | string     | null: false |
| building_name                | string     | null: false |
| phone_number                 | string     | unique: true |
| user                         | references | null: false, foreign_key: true |
| item                         | references | null: false, foreign_key: true |

### association
has_many : trade_information


### trade_information

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |
| destination | references | null: false, foreign_key: true |

### association
belongs_to : user
belongs_to : item
belongs_to : destination