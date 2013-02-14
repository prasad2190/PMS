class MilestonesController < ApplicationController
	before_filter :load_project
	def index 
		
		@milestones = @project.milestones
	end

	def new
		@milestone = @project.milestones.new
	end
	
	def show
		@milestone =  @project.milestones.find(params[:id])
	end

	def create
		@milestone = @project.milestones.new(params[:milestone]) 

		if @milestone.save
			redirect_to project_milestone_path(@project,@milestone),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@milestone =  @project.milestones.find(params[:id])
	end

	def destroy
		@milestone =  @project.milestones.find(params[:id])
		@milestone.destroy
		redirect_to project_milestones_path(@project),:notice=>"Successfully Destroy"
	end
	def update
		@milestone = @project.milestones.find(params[:id])
		if @milestone.update_attributes(params[:milestone])
			redirect_to project_milestone_path(@project,@milestone),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end
	def finish_task
		@milestone = @project.milestones.find(params[:id])
		@milestone.set_finish
		if @milestone.save
			redirect_to project_milestones_path(@project),:notice=>"Milestone is finish"
		else
			redirect_to project_milestones_path(@project),:notice=>"Milestone is not finish"
		end
	end	

	protected
	def load_project
		@project = Project.find(params[:project_id])
	end
end


