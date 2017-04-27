class CreateReview < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :text
      t.timestamps
    end

    add_reference :reviews, :hotel, index: true
    add_reference :reviews, :user, index: true
  end
end
