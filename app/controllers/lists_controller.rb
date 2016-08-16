class ListsController < ApplicationController

	def index
		@list = List.new
		@lists = List.all
	end

	def show
		@list = List.find_by(params[:id])
	end

	def create
		@list = List.new
		@list.name = params[:list][:name]
		@list.save
		redirect_to root_path
	end
end
