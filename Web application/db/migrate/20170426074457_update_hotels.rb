class UpdateHotels < ActiveRecord::Migration[5.0]
  def change
    add_reference :hotels, :user, index: true
    add_column :hotels, :photo, :string
    add_column :hotels, :created_at, :datetime
    add_column :hotels, :updated_at, :datetime
  end
end
