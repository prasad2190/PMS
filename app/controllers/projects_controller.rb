class ProjectsController < ApplicationController
	def index 
		@projects = Project.all
	end

	def new
		@project = Project.new
	end
	
	def show
		@project = Project.find(params[:id])

	end

	def create
		@project = Project.new(params[:project]) 

		if @project.save
			redirect_to projects_path(@project),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to projects_path,:notice=>"Successfully Destroy"
	end
	def update
		@project = Project.find(params[:id])
		if @project.update_attributes(params[:project])
			redirect_to projects_path(@project),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end

end
