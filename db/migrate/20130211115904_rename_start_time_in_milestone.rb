class RenameStartTimeInMilestone < ActiveRecord::Migration
  def up
  	rename_column :milestones, :start_time, :start_date
  end

  def down
  end
end
