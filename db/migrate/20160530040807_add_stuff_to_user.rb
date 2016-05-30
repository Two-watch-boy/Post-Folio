class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :phone, :string
    add_column :users, :email, :string
    add_column :users, :bio, :string
    add_column :users, :picture, :string
    add_column :users, :fb_link, :string
    add_column :users, :li_link, :string
    add_column :users, :password_digest, :string
  end
end
