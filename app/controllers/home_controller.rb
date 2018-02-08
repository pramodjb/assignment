class HomeController < ApplicationController
  def index
  	if user_signed_in? || session[:user_id].present?
  		redirect_to posts_path
  	else	
  		redirect_to new_user_session_path
  	end
  end
end
