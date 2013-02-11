class UsersController < ApplicationController
	def index 
		@users = User.all
	end

	def new
		@user = User.new
	end
	
	def show
		@user = User.find(params[:id])

	end

	def create
		@user = User.new(params[:user]) 

		if @user.save
			redirect_to users_path(@user),:notice=>"Successfully created"
		else
			render :action=>:new
		end	

	end

	def edit
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path,:notice=>"Successfully Destroy"
	end
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to users_path(@project),:notice=>"Successfully updated"
		else
			render :action=>:edit
		end	
	end

end

	

