class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :user_id
      t.attachment :image
      t.string :answer

      t.timestamps null: false
    end
  end
end
