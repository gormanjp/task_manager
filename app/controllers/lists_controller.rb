class ListsController < ApplicationController

	def index
		@list = List.new
		@lists = List.all
	end

	def show
		@list = List.find_by_id(params[:id])
		@tasks = @list.tasks
		@task = Task.new
	end

	def create
		@list = List.new(list_params)
		@list.save
		@lists = List.all
		render :index 
	end

	private
	
		def list_params
			params.require(:list).permit(:name)
		end
end
