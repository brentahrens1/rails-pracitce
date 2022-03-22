class AddTitleToPracticePosts < ActiveRecord::Migration[6.1]
  def change
    add_column :practice_posts, :title, :string
  end
end
