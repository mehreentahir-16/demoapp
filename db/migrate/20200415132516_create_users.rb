class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :full_name
      t.integer :phone
      t.integer :age
      t.string :gender
      t.date :date_of_birth
      t.string :bio
      t.string :address
      t.string :education
      t.integer :cnic
      t.string :location
      t.string :fcm_token

      t.timestamps
    end
  end
end
