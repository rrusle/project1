class SessionController < ApplicationController
	
	def new 
	end 

	def create
		owner = Owner.where(:email => params[:email]).first
		if owner.present? && owner.authenticate(params[:password])
			session[:owner_id] = owner.id
			redirect_to root_path
		else
			redirect_to login_path
		end 
	end
	
	def  destroy
		session[:owner_id] = nil
		redirect_to root_path
	end
end 