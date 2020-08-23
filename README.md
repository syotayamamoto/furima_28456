## users テーブル

| Column   | Type      | options       |
| -------- | --------- | --------------|
| user     | string    | null: false,  |
| email    | string    | null: false,  |
| password | string    | null: false,  |

### association
- has_many : items
- has_one : credit_cards


##　items テーブル

| Column    | Type      | options      |
| --------  | --------- | ------------ |
| name      | string    | null: false  |
| category  | string    |              |
| size      | reference | null: false,foreign_key: true |
| item_img  | reference | null: false,foreign_key: true |
| price     | string    | null: false  |
| user      | reference | null: false  |

### association
- belongs_to : users



## destination テーブル

| Column                       | Type      | options       |
| --------------------         | --------- | --------------|
| destination_first_name       | string     | null:false |
| destination_family_name      | string     | null:false |
| destination_first_name_kana  | string     | null: false  |
| destination_family_name_kana | string     | null: false, |
| post_cord                    | integer(7) | null: false |
| city                         | string     | null: false |
| house_number                 | string     | null: false |
| building_name                | integer    |             |
| phone_number                 | integer    | unique: true |

### association
belongs_to : user

## credit_cards テーブル

| Column      | Type      | options       |
| --------    | --------- | --------------|
| card_number       | integer   | null: false  |
| expiration_year   | integer   | null: false  |
| expiration_month  | integer   | null: false  |
| security_code     | integer   | null: false  |
| user              | reference | null: false, foreign_key: true |

### association
belongs_to: user


