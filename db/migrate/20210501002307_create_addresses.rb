class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|

      t.timestamps
      t.string      :post_code,     null: false
      t.integer     :prefecture_id, null: false
      t.string      :city,          null: false
      t.string      :house_number,  null: false
      t.string      :buildeing
      t.string      :phone_number,  null: false
      t.references  :order,         null: false, foreign_key: true
      
    end
  end
end
