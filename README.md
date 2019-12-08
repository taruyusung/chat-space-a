# README

# Qiita DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :chats
- has_many :users_groups
- has_many  :groups,  through:  :users_groups

## chatテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|| 
|image|text|| 
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :users_groups
- has_many  :users,  through:  :users_groups
- has_many :chats

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
