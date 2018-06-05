


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

fund_item_one = Fund_Items.create!(fund: fund_one, coin: coin_three, coin_purchase_price_in_cents: 65, quantity: 12)
fund_item_one = Fund_Items.create!(fund: fund_two, coin: coin_five, coin_purchase_price_in_cents: 120000, quantity: 1)
fund_item_one = Fund_Items.create!(fund: fund_three, coin: coin_seven, coin_purchase_price_in_cents: 1313, quantity: 5)

user_one = User.create!(name: "Aki")
user_two = User.create!(name: "Tim")
user_three = User.create!(name: "Ammelie")
user_four = User.create!(name: "Alex")

membership_one = Membership.create!(fund: fund_one, user: user_one, allocation_share: 20.5)
membership_two = Membership.create!(fund: fund_one, user: user_two, allocation_share: 40.5)
membership_three = Membership.create!(fund: fund_two, user: user_three, allocation_share: 75.0)

coin_one = Coin.create!(
  name: 'BTC',
  price_in_cents: 750000)

coin_two = Coin.create!(
  name: 'ETH',
  price_in_cents: 60000)

coin_three = Coin.create!(
  name: 'XRP',
  price_in_cents: 65)

coin_four = Coin.create!(
  name: 'LTC',
  price_in_cents: 13000)

coin_five = Coin.create!(
  name: 'BCH',
  price_in_cents: 120000)

coin_six = Coin.create!(
  name: 'ADA',
  price_in_cents: 25)

coin_seven = Coin.create!(
  name: 'EOS',
  price_in_cents: 1313)

coin_eight = Coin.create!(
  name: 'XLM',
  price_in_cents: 29)

coin_nine = Coin.create!(
  name: 'NEO',
  price_in_cents: 5246)

