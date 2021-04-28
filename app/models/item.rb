class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_fee
  belongs_to :prefecture
  belongs_to :shipping_date

  validates :image, :name, :description, :price,  presence: true
  validates :price, numericality:{ greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999 }
  validates :category_id, :condition_id, :shipping_fee_id, :prefecture_id, :shipping_date_id, numericality: { other_than: 1 }
end
