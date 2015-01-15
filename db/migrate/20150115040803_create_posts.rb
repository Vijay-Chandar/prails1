class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :head
      t.string :contents
      t.belongs_to :user, index: true
      t.belongs_to :blogs, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
    add_foreign_key :posts, :blogs
  end
end
