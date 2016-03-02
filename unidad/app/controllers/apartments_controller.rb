class ApartmentsController < ApplicationController

	def index
		@apartments = Apartment.all	

	end

	def new
		@apartment=Apartment.new
	end

	def create
		@apartment = Apartment.new(apartment_params)
		@apartment.save
		redirect_to towers_path
	end

	def update
		@apartment = Apartment.find(params[:id])
		@apartment.update(tweet_params)
		redirect_to tweets_path
	end

	def edit
		@apartment = Apartment.find(params[:id])
	end

	def show
		@apartment = Apartment.find(params[:id])
	end

	def destroy
		@apartment = Apartment.find(params[:id])
		@apartment.destroy
		redirect_to towers_path		
	end

	def apartment_params #especifica que parametros recibe o no mi controlador
    params.require(:apartment).permit(:id, :number, :tower_id,:floor)
 	end

end
