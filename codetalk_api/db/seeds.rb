# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
    email: "example2@example.com",
    password: "password",
    password_confirmation: "password"
)

Talk.create!(
    lang: 'python',
    lang_version: '3.7',
    code: 'sample_code',
    result: 'sample_result',
    user_id: User.first.id
)