class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :link
      t.string :location
      t.text :description
      t.boolean :remote
      t.date :exp_date

      t.timestamps
    end
  end
end
