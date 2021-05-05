FactoryBot.define do
  factory :order_address do
    post_code      {'111-1111'}
    prefecture_id  {2}
    city           {'山田町'}
    house_number   {'山田１２３'}
    building       {'山田荘１０２'}
    phone_number   {'09012345678'}
    token          {"tok_abcdefghijk000000000000000000"}
  end
end