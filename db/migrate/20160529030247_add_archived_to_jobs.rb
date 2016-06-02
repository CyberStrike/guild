class AddArchivedToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :archived, :boolean, :default => false
  end
end
