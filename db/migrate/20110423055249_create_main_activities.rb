class CreateMainActivities < ActiveRecord::Migration
  def self.up
    create_table :main_activities do |t|
      t.text :description
      t.float :time_main_activity
      t.integer :activity_id
      t.timestamps
    end
  end

  def self.down
    drop_table :main_activities
  end
end
