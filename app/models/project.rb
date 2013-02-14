class Project < ActiveRecord::Base
	has_many :user_projects
	has_many :users, :through => :user_projects 
	has_many :milestones
	has_many :tasks, :through => :milestones
	validates :name, :length => { :minimum => 2 }
	validates :description, :length => { :maximum => 200 }
  attr_accessible :description, :end_date, :name, :start_date,:user_ids,:status

  def set_finish
  	self.status="finish"
  end

end
