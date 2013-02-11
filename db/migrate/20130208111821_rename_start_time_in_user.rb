class RenameStartTimeInUser < ActiveRecord::Migration
  def up
  	rename_column :users, :start_time, :start_date
  end

  def down
  end
end
