class AddImageAndTitleToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :image, :string
    add_column :photos, :title, :string
  end
end
