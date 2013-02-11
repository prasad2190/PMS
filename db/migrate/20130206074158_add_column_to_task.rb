class AddColumnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :milestone_id, :integer
    add_column :tasks, :user_id, :integer
  end
end
