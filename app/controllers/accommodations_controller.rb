class AccommodationsController < ApplicationController 
	def index
		binding.pry
		@accommodations = Accommodation.all
	end 

	def create 
		@accommodation = Accommodation.create accommodation_params
		binding.pry
		@accommodation.owner_id = @current_user.id
		binding.pry
		@accommodation.save
		redirect_to accommodation_path(@accommodation)
	end 

	def new 
		@accommodation = Accommodation.new
	end 

	def edit 
		@accommodation = Accommodation.find params[:id]
		#@accommodation.update accommodation_path
		#redirect_to accommodation_path(@accommodation)
	end 

	def show 
		@accommodation = Accommodation.find params[:id]
	end 

	def update
		@accommodation = Accommodation.find params[:id]
		@accommodation.update accommodation_params
		redirect_to accommodation_path
		

	end 

	def destroy 
		@accommodation = Accommodation.find params[:id]
		@accommodation.destroy
		redirect_to accommodations_path
	end 

	private 
	def accommodation_params
		params.require(:accommodation).permit(:image, :bedroom, :bathroom, :carpark, :address, :suburb, :price, :detail)
	end 
end 