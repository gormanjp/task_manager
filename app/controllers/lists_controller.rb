class ListsController < ApplicationController

	def index
		@list = List.new
		@lists = List.all
	end

	def show #this is where tasks are created
		@list = List.find_by_id(params[:id]) 
		@task = Task.new
	end

	def create
		@list = List.new(list_params)
		@lists = List.all
		if @list.save
			redirect_to lists_path
		else 
			render :index
		end
	end

	def destroy
		@list = List.find(params[:id])
		@list.destroy
		redirect_to root_path
	end

	private
	
		def list_params
			params.require(:list).permit(:name)
		end
end
