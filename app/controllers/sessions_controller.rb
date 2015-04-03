class SessionsController < ApplicationController
	def new
		render 'new'
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			radirect_to user
		else
			flash.now[:erroe] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def delete
		sign_out
		rediect_to root_url
	end
end
