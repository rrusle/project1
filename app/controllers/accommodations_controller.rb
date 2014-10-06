class AccommodationsController < ApplicationController 
	def index 
		@accommodations = Accommodation.all
	end 

	def create 
		@accommodation =Accommodation.create accommodation_params
		redirect_to accommodation_path
	end 

	def new 
		@accommodation = Accommodation.new
	end 

	def edit 
		@accommodation = Accommodation.find params[:id]
	end 

	def show 
		@accommodation = Accommodation.find params[:id]
		redirect_to accommodation_path
	end 

	def update

	end 

	def destroy 
	end 

	private 
	def accommodation_params
		params.require(:accommodation).permit(:image, :bedroom, :bathroom, :carpark, :suburb, :price, :detail)
	end 
end 