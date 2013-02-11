class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.string :name
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.integer :project_id

      t.timestamps
    end
  end
end
