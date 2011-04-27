class CreateAssignedMainActivities < ActiveRecord::Migration
  def self.up
    create_table :assigned_main_activities do |t|
      t.integer :main_activity_id
      t.integer :garment_number
      t.timestamps
    end
  end

  def self.down
    drop_table :assigned_main_activities
  end
end
