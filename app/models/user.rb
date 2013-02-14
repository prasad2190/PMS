class User < ActiveRecord::Base

	has_many :user_projects
	has_many :projects, :through => :user_projects
	has_many :tasks

	validates :name, :length => { :minimum => 2 }
	validates :description, :length => { :maximum => 2 }
	validates :name, :exclusion => { :in => %w(www us ca jp)}

	  validates :name, :format => { :with => /\A[a-zA-Z]+\z/,
    :message => "Only letters allowed" }
    before_validation :ensure_name_has_a_value
     def ensure_name_has_a_value
    if name.nil?
      self.name = "default"
    end
  end

  attr_accessible :description, :end_date, :name, :start_date,:project_ids
end
