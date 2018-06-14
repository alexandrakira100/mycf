Membership.destroy_all
FundItem.destroy_all
Fund.destroy_all
User.destroy_all
Coin.destroy_all

user_one = User.create!(name: "Aki", email: "aki@bm.com", password: "123456", confirmed_at:Time.current, photo: "aki.jpg")
user_two = User.create!(name: "Tim", email: "tim@bm.com", password: "123456", confirmed_at:Time.current, photo: "tim.jpg")
user_three = User.create!(name: "Ammelie", email: "ammelie@bm.com", password: "123456", confirmed_at:Time.current, photo: "ammelie.jpg")
user_four = User.create!(name: "Alex", email: "alex@bm.com", password: "123456", confirmed_at:Time.current, photo: "alex.jpg")
user_five = User.create!(name: "Satoshi", email: "satoshi@bm.com", password: "123456", confirmed_at:Time.current, photo: "satoshi.jpg")
user_six = User.create!(name: "Charlie", email: "charlie@bm.com", password: "123456", confirmed_at:Time.current, photo: "charlie.jpg")
user_seven = User.create!(name: "Vitalik", email: "vitalik@bm.com", password: "123456", confirmed_at:Time.current, photo: "vitalik.jpg")
user_eight = User.create!(name: "Roger", email: "roger@bm.com", password: "123456", confirmed_at:Time.current, photo: "roger.jpg")


fund_one = Fund.create!(name: "GRAVEX", owner: user_two)


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

coin_ten = Coin.create!(
  name: 'USD',
  price_in_cents: 100)


fund_item_one = FundItem.create!(fund: fund_one, quantity: 9987.54, coin: coin_three, coin_purchase_price_in_cents: 32)
fund_item_two = FundItem.create!(fund: fund_one, quantity: 24.611, coin: coin_four, coin_purchase_price_in_cents: 16098)
fund_item_three = FundItem.create!(fund: fund_one, quantity: 6, coin: coin_five, coin_purchase_price_in_cents: 89210)
fund_item_four = FundItem.create!(fund: fund_one, quantity: 0.873, coin: coin_one, coin_purchase_price_in_cents: 504522)
fund_item_five = FundItem.create!(fund: fund_one, quantity: 10, coin: coin_two, coin_purchase_price_in_cents: 16704)


membership_one = Membership.create!(fund: fund_one, user: user_one, allocation_share: 20.5)
membership_two = Membership.create!(fund: fund_one, user: user_two, allocation_share: 40.5)
membership_three = Membership.create!(fund: fund_two, user: user_three, allocation_share: 75.0)

