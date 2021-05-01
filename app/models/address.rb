class Address < ApplicationRecord
  belings_to :order

  with_options presence: true do
    validates :post_code
    validates :prefecture_id
    validates :city
    validates :house_number
    validates :phone_number
end
