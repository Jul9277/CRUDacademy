class GossipsController < ApplicationController

	def show
		@gossip = Gossip.find(params[:id]) 
	end
	def edit
		@gossip = Gossip.find(params[:id])	
	end

	def update
		@gossip = Gossip.find(params[:id])
		@gossip.body = gossip_params [:body]
		@gossip.save
		redirect_to gossip_path
	end

	def index
		@gossip = Gossip.all
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		redirect_to gossip_path
	end

	private
	def gossip_params
		params[:gossip].permit(:body)
	end
end
