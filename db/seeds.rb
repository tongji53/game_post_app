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

post1 = user2.posts.create!(title: "2", content: "沖縄そば")
post2 = user1.posts.create!(title: "1", content: "海ぶどう")
post3 = user3.posts.create!(title: "2", content: "ゴーヤーチャンプルー")
post4 = user3.posts.create!(title: "2", content: "サーターアンダギー")
post5 = user1.posts.create!(title: "2", content: "タコライス")

post1.likes.create!(user_id: user1.id)
post1.likes.create!(user_id: user3.id)
post2.likes.create!(user_id: user2.id)
post3.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user2.id)
post5.likes.create!(user_id: user3.id)

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(email: EMAIL, password: PASSWORD)

puts "初期データの投入に成功しました！"
