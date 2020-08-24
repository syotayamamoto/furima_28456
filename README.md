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
| birth_date       | date      | null: false |



### association
- has_many : trade_informations
- has_many : items



##　items テーブル

| Column    | Type      | options      |
| --------  | --------- | ------------ |
| name      | string    | null: false |
| category  | integer   | null: false |             |
| status    | integer   | null: false | 
| fee       | integer   | null: false |
| size      | integer   | null: false |
| text      | text      | null: false |
| img       | string    | null: false |
| price     | integer   | null: false |
| address   | integer   | null: false |
| days      | integer   | null: false |
| user      | reference | foreign_key: true  |

### association
- belongs_to: user
- has_one : trade_information


## destinations テーブル

| Column                       | Type      | options       |
| --------------------         | --------- | --------------|
| post_cord                    | string     | null: false |
| prefecture                   | integer    | null: false |
| city                         | string     | null: false |
| house_number                 | string     | null: false |
| building_name                | string     | 　　　　　　　|
| phone_number                 | string     | unique: true |
| trade_information            | references | null: false, foreign_key: true |

### association
belongs_to : trade_information


### trade_information

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| item        | references | null: false, foreign_key: true |


### association
belongs_to : user
belongs_to : item : destination
has_one    : destination