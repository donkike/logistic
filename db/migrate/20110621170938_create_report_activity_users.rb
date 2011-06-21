class CreateReportActivityUsers < ActiveRecord::Migration
  def self.up
    create_table :report_activity_users do |t|
      t.integer :user_id
      t.integer :activity_id
      t.integer :real_time
      t.timestamps
    end
  end

  def self.down
    drop_table :report_activity_users
  end
end
