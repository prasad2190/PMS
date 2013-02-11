class RenameEndTimeInUser < ActiveRecord::Migration
  def up
  	rename_column :users, :end_time, :end_date
  end

  def down
  end
end
