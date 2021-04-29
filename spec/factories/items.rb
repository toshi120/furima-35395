FactoryBot.define do
  factory :item do
    name             { 'ノート' }
    description      { '商品の説明' }
    category_id      { 2 }
    condition_id     { 2 }
    shipping_fee_id  { 2 }
    prefecture_id    { 2 }
    shipping_date_id { 2 }
    price            { 10_000 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/apple-touch-icon.png'), filename: 'apple-touch-icon.png')
    end
  end
end
