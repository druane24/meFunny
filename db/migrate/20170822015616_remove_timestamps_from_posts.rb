class RemoveTimestampsFromPosts < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :created_at, :string
    remove_column :posts, :updated_at, :string
  end
end
