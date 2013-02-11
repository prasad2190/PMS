class RenameStartTimeInTask < ActiveRecord::Migration
  def up
  	rename_column :tasks, :start_time, :start_date
  end

  def down
  end
end
