class AddAuthorDescriptionToPracticePost < ActiveRecord::Migration[6.1]
  def change
    add_column :practice_posts, :author, :string
    add_column :practice_posts, :description, :string
  end
end
