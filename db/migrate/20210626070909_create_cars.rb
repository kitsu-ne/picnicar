class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string  :car_name,          null: false
      t.text    :explanation,       null: false
      t.integer :prefecture_id,     null: false
      t.string  :address_line1,     null: false
      t.string  :address_line2,     null: false
      t.string  :complement,
      t.integer :vibe_id
      t.integer :food_id
      t.integer :drink_id
      t.string  :ig_name,
      t.string  :fb_name,
      t.string  :tw_name,
      t.references :owner_id,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
