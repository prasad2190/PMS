class RenameEndTimeInMilestone < ActiveRecord::Migration
  def up
  	rename_column :milestones, :end_time, :end_date
  end

  def down
  end
end
