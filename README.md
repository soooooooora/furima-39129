## usersテーブル

| Column             | Type       | Options                           |
| ------             | ---------- | ----------------------------------|
| email              | string     | null: false, unique: true         |
| encrypted_password | string     | null: false                       |
| nickname           | string     | null: false  unique: true         |

### Association
- has_many :items
- has_many :orders

## itemsテーブル

| Column             | Type       | Options                           |
| ------             | ---------- | ----------------------------------|
| name               | string     | null: false                       |
| category           | string     | null: false                       |
| price              | integer    | null: false                       |
| user_id            | references | null: false,  foreign_key: true   |

### Association
- belongs_to :user
- has_one :order

## ordersテーブル

| Column             | Type       | Options                           |
| ------             | ---------- | ----------------------------------|
| user_id            | references | null: false,  foreign_key: true   |
| item_id            | references | null: false,  foreign_key: true   |

### Association
- belongs_to :user
- belongs_to :items
- has_one :delivery

## deliverysテーブル

| Column             | Type       | Options                           |
| ------             | ---------- | ----------------------------------|
| city               | string     | null: false.                      |
| block              | string     | null: false                       |
| building           | string     | null: false                       |
| phone_number       | string     | null: false                       |
| order_id           | references | null: false,  foreign_key: true   |

### Association
- belongs_to :order