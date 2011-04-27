class RemoveModuleIdToUser < ActiveRecord::Migration
  def self.up
    remove_column :users, :module_id
  end

  def self.down
    add_column :users, :module_id, :integer
  end
end
