# テーブル設計

## users テーブル

| Column             | Type    | Options                  |
| --------           | ------  | -----------              |
| user_name          | string  | null: false unique: true |
| email              | string  | null: false unique: true |
| encrypted_password | string  | null: false              |
| first_kana         | string  | null: false              |
| last_kana          | string  | null: false              |
| birth_date         | date    | null: false              |
| phone_number       | string  | null: false              |
| vibe_id            | integer | null: false              |
| food_id            | integer | null: false              |
| drink_id           | integer | null: false              |
| prefecture_id      | integer | null: false              |


### Association

- has_many :comments

## owners テーブル

| Column             | Type    | Options                  |
| --------           | ------  | -----------              |
| owner_name          | string  | null: false unique: true |
| email              | string  | null: false unique: true |
| encrypted_password | string  | null: false              |
| first_kana         | string  | null: false              |
| last_kana          | string  | null: false              |
| birth_date         | date    | null: false              |
| phone_number       | string  | null: false              |

### Association

- has_many :comments
- has_many :cars

## cars テーブル

| Column           | Type       | Options     |
| -----------      | ---------  | ----------- |
| carname         | string      | null: false |
| explanation      | text       | null: false |
| time             | integer    | null: false |
| postal_code      | string     | null: false |
| prefecture_id    | integer    | null: false |
| address_line1    | string     | null: false |
| address_line2    | string     | null: false |
| complement       | string     |
| vibe_id          | integer    |
| food_id          | integer    |
| drink_id         | integer    |
| ig_name          | string     |
| fb_name          | string     |
| tw_name          | string     |
| owner            | references | null: false, foreign_key: true|

### Association

- belongs_to :owner
- has_many :comments

## comments テーブル

| Column       | Type       | Options                        |
| -------      | ---------- | ------------------------------ |
| comment      | text       | null: false                    |
| user         | references | null: false, foreign_key: true |
| owner        | references | null: false, foreign_key: true |
| car          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :user
- belongs_to :car