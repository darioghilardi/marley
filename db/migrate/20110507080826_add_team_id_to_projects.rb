class AddTeamIdToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :team_id, :integer
  end

  def self.down
    remove_column :projects, :team_id
  end
end
