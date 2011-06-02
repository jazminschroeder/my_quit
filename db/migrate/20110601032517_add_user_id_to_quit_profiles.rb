class AddUserIdToQuitProfiles < ActiveRecord::Migration
  def self.up
    add_column :quit_profiles, :user_id, :integer
    add_index :quit_profiles, :user_id
  end

  def self.down
    remove_column :quit_profiles, :user_id
  end
end
