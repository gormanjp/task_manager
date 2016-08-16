class ListsController < ApplicationController

	def index
		@list = List.new
		@lists = List.all
	end

	def show
		@list = List.find_by_id(params[:id])
		@task = @list.tasks.build
	end

	def create
		@list = List.new(list_params)
		binding.pry
		@list.name = params[:list][:name]
		@list.save

		redirect_to root_path
	end

	private
	
		def list_params
			params.require(:list).permit(:name)
		end
end
