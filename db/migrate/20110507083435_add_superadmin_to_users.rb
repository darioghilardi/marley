class AddAdminToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :superadmin, :boolean
  end

  def self.down
    remove_column :users, :superadmin
  end
end
