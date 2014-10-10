class OwnersController < ApplicationController 

	def index
		redirect_to root_path unless @current_user
		@owners = @current_user
	end 

	def new 
		@owner = Owner.new
	end 
	
	def create
		@owner = Owner.new owner_params
		if @owner.save
			session[:owner_id] = @owner.id
			redirect_to root_path
		else 
			render :new
		end
	end

	

	def edit 
		@owners = @current_user
		# @owner = Owner.find params[:id]
		# if @owner.update
		# 	session[:owner_id] = @owner_id
		# 	redirect_to owners_path
		# else
		# 	render :update
		# end 
	end

	def show 
		@owner = Owner.find params[:id]
	end

	def update 
		owner = @current_user
		owner.update owner_params
		redirect_to owner
		 
	end

	def destroy 
		@owner = Owner.find params[:id]
		@owner.destroy
		redirect_to owners_path
	end

	private 
	def owner_params
		params.require(:owner).permit(:firstname, :lastname, :contact, :email, :image, :password, :password_confirmation)
	end 
end 