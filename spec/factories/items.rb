FactoryBot.define do
  factory :item do
    association :user, factory: :user

    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 1, to: 10) }
    item_status_id { Faker::Number.between(from: 1, to: 6) }
    shipping_cost_id { Faker::Number.between(from: 1, to: 2) }
    prefecture_id { Faker::Number.between(from: 1, to: 47) }
    shipping_date_id { Faker::Number.between(from: 1, to: 3) }
    price { Faker::Number.between(from: 300, to: 9_999_999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/furima.png'), filename: 'furima.png')
    end
  end
end