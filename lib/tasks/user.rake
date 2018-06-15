namespace :user do
  desc "seeding users and a fund"
  task seed_users: :environment do
    user_one = User.create!(name: "Aki", email: "aki@bm.com", password: "123456", confirmed_at:Time.current, photo: "aki.jpg")
    user_two = User.create!(name: "Tim", email: "tim@bm.com", password: "123456", confirmed_at:Time.current, photo: "tim.jpg")
    user_three = User.create!(name: "Ammelie", email: "ammelie@bm.com", password: "123456", confirmed_at:Time.current, photo: "ammelie.jpg")
    user_four = User.create!(name: "Alex", email: "alex@bm.com", password: "123456", confirmed_at:Time.current, photo: "alex.jpg")
    user_five = User.create!(name: "Satoshi", email: "satoshi@bm.com", password: "123456", confirmed_at:Time.current, photo: "satoshi.jpg")
    user_six = User.create!(name: "Charlie", email: "charlie@bm.com", password: "123456", confirmed_at:Time.current, photo: "charlie.jpg")
    user_seven = User.create!(name: "Vitalik", email: "vitalik@bm.com", password: "123456", confirmed_at:Time.current, photo: "vitalik.jpg")
    user_eight = User.create!(name: "Roger", email: "roger@bm.com", password: "123456", confirmed_at:Time.current, photo: "roger.jpg")


    fund_one = Fund.create!(name: "GRAVEX", owner: user_two)
  end

end
