class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :username, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :hours, :text
    add_column :users, :description, :text
  end
end
