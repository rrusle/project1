class PagesController < ApplicationController 

	def index
		@accommodations = Accommodation.all
	end

	def show 
		@search = Accommodation.find params[:search]
	end 


end 