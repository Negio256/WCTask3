class CreateAddUserIdToPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :add_user_id_to_posts do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
