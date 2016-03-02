class UsersController < ApplicationController

	def index
		@users = User.all	

	end

	def new
		@user=User.new
	end

	def create
		@user = User.new(tweet_params)
		@user.save
		redirect_to towers_path
	end

	def update
		@user = User.find(params[:id])
		@user.update(tweet_params)
		redirect_to towers_path
	end

	def edit
		@user = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to towers_path		
	end

	def tweet_params #especifica que parametros recibe o no mi controlador
    params.require(:user).permit(:id, :number, :cc, :apartment)
 	end
end
