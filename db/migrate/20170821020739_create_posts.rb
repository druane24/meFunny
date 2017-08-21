class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :img_url
      t.text :web_url
      t.integer :category

      t.timestamps
    end
  end
end
