class RemoveBusinessFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :business, :boolean
  end
end
