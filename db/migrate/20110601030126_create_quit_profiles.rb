class CreateQuitProfiles < ActiveRecord::Migration
  def self.up
    create_table :quit_profiles do |t|
      t.decimal :cigarettes_per_day, :precision => 4, :scale=>1
      t.integer :cigarettes_per_pack
      t.decimal :cost_per_pack, :precision => 4, :scale=>2
      t.datetime :quit_date, :null => false      
      t.timestamps
    end
  end

  def self.down
    drop users
  end
end
