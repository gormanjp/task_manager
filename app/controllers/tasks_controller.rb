class TasksController < ApplicationController
  

  def create
  	@list = List.find(params[:list_id])
  	@task = @list.tasks.build(task_params)
  	@task.save
  	redirect_to list_path(@list)
  end

private
	def task_params
		params.require(:task).permit(:name)
	end	

end
