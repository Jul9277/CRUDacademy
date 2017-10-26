class MoussaillonsController < ApplicationController
	def new
		@moussaillon = Moussaillon.new
	end

	def create
		@moussaillon = Moussaillon.new(moussaillon_params)
		@moussaillon.save
		redirect_to moussaillon_path(@moussaillon.id)
		
	end

	def show
		@moussaillon = Moussaillon.find(params[:id])
		
	end

	def edit
		@moussaillon = Moussaillon.find(params[:id])
		
		
	end

	def update
		@moussaillon = Moussaillon.find(params[:id])
		@moussaillon.username = moussaillon_params[:username]
		@moussaillon.adresse_email = moussaillon_params[:adresse_email]
		@moussaillon.bio = moussaillon_params[:bio]
		@moussaillon.save
		redirect_to moussaillons_path
	end

	def index
		@moussaillon = Moussaillon.all
	end

	def destroy
		@moussaillon = Moussaillon.find(params[:id])
		@moussaillon.destroy
		redirect_to moussaillon_path
	end

private
	def moussaillon_params
		params[:moussaillon].permit(:username, :adresse_email, :bio)
	end


end
