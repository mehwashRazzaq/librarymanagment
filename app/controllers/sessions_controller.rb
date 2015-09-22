class SessionsController < ApplicationController
  def new
		if session[:user_id]
			redirect_to signup_url
		else

		end
  end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			log_in user
			redirect_to user
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		log_out
		redirect_to login_url
	end
end
