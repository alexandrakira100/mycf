Membership.destroy_all
FundItem.destroy_all
Fund.destroy_all
User.destroy_all
Coin.destroy_all
user_one = User.create!(name: "Aki", email: "aki@test.com", password: "123456")
user_two = User.create!(name: "Tim", email: "tim@test.com", password: "123456")
user_three = User.create!(name: "Ammelie", email: "ammelie@test.com", password: "123456")
user_four = User.create!(name: "Alex", email: "alex@test.com", password: "123456")

fund_one = Fund.create!(name: "Fund A", owner: user_three)
fund_two = Fund.create!(name: "Fund B", owner: user_one)
fund_three = Fund.create!(name: "Fund C", owner: user_two)

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


fund_item_one = FundItem.create!(fund: fund_one, coin: coin_three, coin_purchase_price_in_cents: 65, quantity: 12)
fund_item_two = FundItem.create!(fund: fund_two, coin: coin_five, coin_purchase_price_in_cents: 120000, quantity: 1)
fund_item_three = FundItem.create!(fund: fund_three, coin: coin_seven, coin_purchase_price_in_cents: 1313, quantity: 5)


membership_one = Membership.create!(fund: fund_one, user: user_one, allocation_share: 20.5)
membership_two = Membership.create!(fund: fund_one, user: user_two, allocation_share: 40.5)
membership_three = Membership.create!(fund: fund_two, user: user_three, allocation_share: 75.0)

