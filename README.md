# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname    | string | null: false   |
| email | string | null: false, unique: true   |
| encrypted_password     | string | null: false   |
| birthday | date | null: false   |
| sex | date | null: false   |

### Association
- has_many :recipe

## recipes テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| title    | string | null: false   |
| how_to_make | text | null: false, unique: true   |
| point    | text | null: false   |
| material | text | null: false   |
| comment  | text | null: false   |
| genre    | string | null: false   |
| level    | string | null: false   |
| user     | references | null: false, foreign_key: true  |

### Association
- belongs_to :user