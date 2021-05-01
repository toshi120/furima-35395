class Order < ApplicationRecord
  belongs_to :user
  belings_to :item
  has_one    :address

end
