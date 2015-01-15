class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :username
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :blogs, :users
  end
end
