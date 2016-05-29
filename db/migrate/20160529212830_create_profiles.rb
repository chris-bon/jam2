class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :gender
      t.string :phone_number
      t.string :email
      t.string :location
      t.string :instruments
      t.string :genre
      t.string :availability

      t.timestamps null: false
    end
  end
end
