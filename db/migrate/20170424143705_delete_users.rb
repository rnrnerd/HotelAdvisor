class DeleteUsers < ActiveRecord::Migration[5.0]
  def up
    drop_table :users
  end

  def down
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :login
      t.string :password
      t.string :email
    end
  end
end
