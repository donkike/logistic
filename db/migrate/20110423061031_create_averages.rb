class CreateAverages < ActiveRecord::Migration
  def self.up
    create_table :averages do |t|
      t.integer :user_id
      t.integer :activity_id
      t.float :value
      t.timestamps
    end
  end

  def self.down
    drop_table :averages
  end
end
