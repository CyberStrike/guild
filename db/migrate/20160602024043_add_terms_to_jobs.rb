class AddTermsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :terms, :string
  end
end
