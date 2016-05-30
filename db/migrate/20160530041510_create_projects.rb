class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :media
      t.string :date
      t.string :description
      t.string :thumbnail

      t.timestamps null: false
    end
  end
end
