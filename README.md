# README

# Qiita DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|username|string|null: false|
### Association
- has_many :chats
- has_many :users_groups
- has_many  :groups,  through:  :users_groups

## chatテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|text|null: false|
|user|references|foreign_key: true|
|group|references|foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user|references| foreign_key: true|
### Association
- has_many :users_groups
- has_many  :users,  through:  :users_groups

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group|references|foreign_key: true|
|user|references|foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
