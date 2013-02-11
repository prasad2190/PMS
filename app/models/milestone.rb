class Milestone < ActiveRecord::Base
	belongs_to :project
	has_many :tasks
	validates :name, :length => { :minimum => 2 }
	validates :description, :length => { :maximum => 2 }
  attr_accessible :description, :end_date, :name, :start_date
end
