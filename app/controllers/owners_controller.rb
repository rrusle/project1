class OwnersController < ApplicationController 

	def index
		@owners = Owner.all
	end 

	def create
		@owner = Owner.create owner_params
	end

	def new 
		@owner = Owner.new
	end 

	def edit 
		@owner = Owner.find params[:id]
	end

	def show 
		@owner = Owner.find params[:id]
	end

	def update 
	end

	def destroy 
	end

	private 
	def owner_params
		params.require(:owner).permit(:firstname, :lastname, :contract, :email, :image)
	end 
end 