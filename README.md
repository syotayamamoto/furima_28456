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
| item             | reference | foreign_key: true|

### association
- has_many : item_users
- has_many : item, through: item_users
- has_many : destination


##　items テーブル

| Column    | Type      | options      |
| --------  | --------- | ------------ |
| name      | string    | null: false |
| text      | text      | null: false |
| category  | string    | null: false |             |
| status    | string    | null: false | 
| fee       | string    | null: false |
| size      | string    | null: false |
| item_img  | string    | null: false |
| address   | string    | null: false |
| days      | string    | null: false |
| price     | string    | null: false |
| user      | reference | foreign_key: true  |

### association
- has_many : users
- has_many : users, trough: room_users



## destination テーブル

| Column                       | Type      | options       |
| --------------------         | --------- | --------------|
| destination_first_name       | string     | null:false |
| destination_family_name      | string     | null:false |
| destination_first_name_kana  | string     | null: false  |
| destination_family_name_kana | string     | null: false, |
| post_cord                    | string     | null: false |
| city                         | string     | null: false |
| house_number                 | string     | null: false |
| building_name                | integer    |             |
| phone_number                 | string     | unique: true |

### association
belongs_to : user

### item_users

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

### association
belongs_to : user
belongs_to : item