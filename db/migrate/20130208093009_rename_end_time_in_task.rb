class RenameEndTimeInTask < ActiveRecord::Migration
  def up
  	rename_column :tasks, :end_time, :end_date
  end

  def down
  end
end
