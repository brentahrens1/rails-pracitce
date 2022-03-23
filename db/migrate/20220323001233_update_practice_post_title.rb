class UpdatePracticePostTitle < ActiveRecord::Migration[6.1]
  def up
    change_column :practice_posts, :title, :string, :limit => 50
  end
  def down
    change_column :practice_posts, :title, :string, :limit => 255
  end
end
