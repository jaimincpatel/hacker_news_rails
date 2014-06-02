class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
