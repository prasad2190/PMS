class TasksController < ApplicationController
	before_filter :load_milestone
	def index 
		@tasks = @milestone.tasks
		
	end

	def new
		@task = @milestone.tasks.new

	end
	
	def show
		@task = @milestone.tasks.find(params[:id])

	end

	def create
		@task = @milestone.tasks.new(params[:task]) 

		if @task.save
			redirect_to project_milestone_task_path(@project,@milestone,@task),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@task = @milestone.tasks.find(params[:id])
	end

	def destroy
		@task = @milestone.tasks.find(params[:id])
		@task.destroy
		redirect_to project_milestone_tasks_path(@project,@milestone,@task),:notice=>"Successfully Destroy"
	end
	def update
		@task = @milestone.tasks.find(params[:id])
		if @task.update_attributes(params[:task])
			redirect_to project_milestone_tasks_path(@project,@milestone,@task),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end

	def finish_task
		@task =  Task.find(params[:id])
		@task.set_finish
		if @task.save
			redirect_to project_milestone_tasks_path(@project,@milestone),:notice=>"Milestone is finish"
		else
			redirect_to project_milestone_tasks_path(@project,@milestone),:notice=>"Milestone is not finish"
		end	
	end

	protected
	def load_milestone
		@project = Project.find(params[:project_id])
		@milestone = @project.milestones.find(params[:milestone_id])
	end

end

