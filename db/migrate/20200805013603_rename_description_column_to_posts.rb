class RenameDescriptionColumnToPosts < ActiveRecord::Migration[6.0]
  def change
    rename_column :posts, :description, :content
  end
end
