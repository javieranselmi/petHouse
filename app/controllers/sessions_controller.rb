class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user and user.authenticate(params[:password])
  		session[:user_id] = user.id
		redirect_to home_url
	else
		redirect_to sessions_new_url, alert: "Invalid user/password combination"
	end
  end

  def destroy
	session[:user_id] = nil
	redirect_to home_url, notice: "Logged out"
  end

end





