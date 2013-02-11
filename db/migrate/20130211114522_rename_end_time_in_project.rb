class RenameEndTimeInProject < ActiveRecord::Migration
  def up
  	rename_column :projects, :end_time, :end_date
  end

  def down
  end
end
