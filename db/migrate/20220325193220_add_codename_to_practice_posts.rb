 class AddCodenameToPracticePosts < ActiveRecord::Migration[6.1]
  def change
    add_column :practice_posts, :codename, :string
  end
end
