class OwnersController < ApplicationController 

	def index
		redirect_to root_path unless @current_user
		@owners = @current_user
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

	def new 
		@owner = Owner.new
	end 

	def edit 
		
	end

	def show 
		@owner = Owner.find params[:id]
	end

	def update 
		owner = @current_user
		owner.update owners_params
		redirect_to edit_owner_path
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