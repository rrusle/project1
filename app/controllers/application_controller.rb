class ApplicationController < ActionController::Base
 
  protect_from_forgery with: :exception
  
  before_action :authenticate

  private
  def authenticate
  	@current_user = Owner.where(:id => session[:owner_id]).first
  	session[:owner_id] = nil unless @current_user.present?
  end 

end
