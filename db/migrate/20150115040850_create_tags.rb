class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.belongs_to :posts, index: true

      t.timestamps null: false
    end
    add_foreign_key :tags, :posts
  end
end
