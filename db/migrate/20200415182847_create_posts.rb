class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :post_type
      t.string :title
      t.text :description
      t.string :media_url
      t.string :media_type
      t.integer :event_id

      t.timestamps
    end
  end
end
