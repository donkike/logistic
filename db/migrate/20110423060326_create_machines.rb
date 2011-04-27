class CreateMachines < ActiveRecord::Migration
  def self.up
    create_table :machines do |t|
      t.text :description
      t.string :name
      t.integer :activity_id
      t.timestamps
    end
  end

  def self.down
    drop_table :machines
  end
end
