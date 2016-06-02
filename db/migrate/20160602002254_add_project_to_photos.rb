class AddProjectToPhotos < ActiveRecord::Migration
  def change
    add_reference :photos, :project, index: true, foreign_key: true
  end
end
