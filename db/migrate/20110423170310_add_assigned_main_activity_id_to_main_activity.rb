class AddAssignedMainActivityIdToMainActivity < ActiveRecord::Migration
  def self.up
    add_column :main_activities, :assigned_main_activity_id, :integer
  end

  def self.down
    remove_column :main_activities, :assigned_main_activity_id
  end
end
