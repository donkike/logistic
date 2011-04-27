class CreateVmodules < ActiveRecord::Migration
  def self.up
    create_table :vmodules do |t|
      t.integer :vmodule_number
      t.float :vmodule_efficiency
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :vmodules
  end
end
