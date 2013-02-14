class Task < ActiveRecord::Base
	belongs_to :milestone
	belongs_to :user
	validates :name, :presence => true, :length => { :minimum => 3 }
	validates :description, :length => { :maximum => 200 }
  attr_accessible :description, :end_date, :name, :start_date, :user_id, :milestone_id,:status
  def set_finish
  	self.status="finish"
  end
end
