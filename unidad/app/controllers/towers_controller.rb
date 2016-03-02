class TowersController < ApplicationController

	def index
		@towers = Tower.all	

	end

	def new
		@tower=Tower.new
	end

	def create
		@tower = Tower.new(tweet_params)
		@tower.save
		redirect_to towers_path
	end

	def update
		@tower = Tower.find(params[:id])
		@tower.update(tweet_params)
		redirect_to towers_path
	end

	def edit
		@tower = Tower.find(params[:id])
	end

	def show
		@tower = Tower.find(params[:id])
	end

	def destroy
		@tower = Tower.find(params[:id])
		@tower.destroy
		redirect_to towers_path	
	end

	def tweet_params #especifica que parametros recibe o no mi controlador
    params.require(:tower).permit(:id, :name, :doorman)
 	end


end
