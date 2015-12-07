class RemoveItemsFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :label, :string
    remove_column :users, :state, :string
  end
end
