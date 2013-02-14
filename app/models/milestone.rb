class Milestone < ActiveRecord::Base
	attr_accessible :description, :end_date, :name, :start_date, :project_id,:status
	belongs_to :project
	has_many :tasks
	validates :name, :length => { :minimum => 2 }
	validates :description, :length => { :maximum => 2 }

	
	
  
  def set_finish
  	self.status="finish"
  end


end
