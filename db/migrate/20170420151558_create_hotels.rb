class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :star_rating
      t.string :breakfast_included
      t.string :room_description
      t.integer :price_for_room
      t.string :address
    end
  end
end
