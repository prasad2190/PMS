class TasksController < ApplicationController
	def index 
		@tasks = Task.all
	end

	def new
		@task = Task.new
	end
	
	def show
		@task = Task.find(params[:id])

	end

	def create
		@task = Task.new(params[:task]) 

		if @task.save
			redirect_to tasks_path(@task),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@task = Task.find(params[:id])
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		redirect_to tasks_path,:notice=>"Successfully Destroy"
	end
	def update
		@task = Task.find(params[:id])
		if @task.update_attributes(params[:task])
			redirect_to tasks_path(@task),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end

end

