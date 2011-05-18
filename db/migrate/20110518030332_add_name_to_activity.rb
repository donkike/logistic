class AddNameToActivity < ActiveRecord::Migration
  def self.up
    add_column :activities, :name, :string
  end

  def self.down
    remove_column :activities, :name
  end
end
