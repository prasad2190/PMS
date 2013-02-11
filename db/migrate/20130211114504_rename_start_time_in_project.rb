class RenameStartTimeInProject < ActiveRecord::Migration
  def up
  	rename_column :projects, :start_time, :start_date
  end

  def down
  end
end
