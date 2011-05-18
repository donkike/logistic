class AddNameToMainActivity < ActiveRecord::Migration
  def self.up
    add_column :main_activities, :name, :string
  end

  def self.down
    remove_column :main_activities, :name
  end
end
