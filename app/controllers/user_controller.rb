class UserController < ApplicationController
	def new
		
	end
	def create
		username = params[:username]
		password = params[:password]
		User.create(:username => username , :password => password)
		redirect_to :login
	end
	def index
		
	end
	def login
		
	end
	def upgrade
		user = User.find_by_username(params[:username])
		if user && user.password == params[:password]
			session[:user_id] = user.id
			redirect_to :index
		else
			redirect_to :login
		end
	end
	def logout
		session[:user_id] = nil
		redirect_to :index
	end
	def edit
		
	end
	def change
		
	end
	def change_password
		user = User.find(session[:user_id])
		new_first_password = params[:new_first_password]
		new_second_password = params[:new_second_password]
		if user.password == params[:old_password] 
			if new_first_password == new_second_password && new_first_password
				user.password = new_first_password
				user.save
				redirect_to :edit
			else
				redirect_to :change
			end
		else
			redirect_to :change
		end
	end
	def function
		
	end
end
