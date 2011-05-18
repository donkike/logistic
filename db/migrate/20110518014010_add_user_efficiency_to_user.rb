class AddUserEfficiencyToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :user_efficiency, :float
  end

  def self.down
    remove_column :users, :user_efficiency
  end
end
