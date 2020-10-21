# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
EMAIL = "test@example.com"
PASSWORD = "password"

# データを全削除
User.destroy_all

# 以下，開発用の初期データ
user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

user2.posts.create!(title: "2", content: "沖縄そば")
user1.posts.create!(title: "1", content: "海ぶどう")
user3.posts.create!(title: "2", content: "ゴーヤーチャンプルー")
user3.posts.create!(title: "2", content: "サーターアンダギー")
user1.posts.create!(title: "2", content: "タコライス")

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(email: EMAIL, password: PASSWORD)

puts "初期データの投入に成功しました！"
