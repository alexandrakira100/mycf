


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fund_one = Fund.create!(name: "Fund A")
fund_two = Fund.create!(name: "Fund B")
fund_three = Fund.create!(name: "Fund C")

user_one = User.create!(name: "Aki")
user_two = User.create!(name: "Tim")
user_three = User.create!(name: "Ammelie")
user_four = User.create!(name: "Alex")

membership_one = Membership.create!(fund: fund_one, user: user_one, allocation_share: 20.5)
membership_two = Membership.create!(fund: fund_one, user: user_two, allocation_share: 40.5)
membership_three = Membership.create!(fund: fund_two, user: user_three, allocation_share: 75.0)
