class MilestonesController < ApplicationController
	def index 
		@milestones = Milestone.all
	end

	def new
		@milestone = Milestone.new
	end
	
	def show
		@milestone = Milestone.find(params[:id])

	end

	def create
		@milestone = Milestone.new(params[:milestone]) 

		if @milestone.save
			redirect_to milestones_path(@milestone),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@milestone = Milestone.find(params[:id])
	end

	def destroy
		@milestone = Milestone.find(params[:id])
		@milestone.destroy
		redirect_to milestones_path,:notice=>"Successfully Destroy"
	end
	def update
		@milestone = Milestone.find(params[:id])
		if @milestone.update_attributes(params[:milestone])
			redirect_to milestones_path(@project),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end

end


