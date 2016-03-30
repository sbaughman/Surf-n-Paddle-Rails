class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :thumbnail
      t.string :interject

      t.timestamps null: false
    end
  end
end
