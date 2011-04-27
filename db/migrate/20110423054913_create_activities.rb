class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.text :description
      t.float :time_activity
      t.integer :average_id
      t.integer :machine_id
      t.integer :main_activity_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
