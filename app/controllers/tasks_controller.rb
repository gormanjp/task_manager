class TasksController < ApplicationController
  

  def create
  	@list = List.find(params[:list_id])
  	@task = @list.tasks.new(task_params)
  	if @task.save
  		redirect_to task_path(@task)
  	else
  		render "lists/show"
  	end
  end

  def update
  	@task = Task.find(params[:id])
  	@list = @task.list
  	@task.update(task_params)
  	redirect_to list_path(@list)
  end

  def show
  	@task = Task.find_by_id(params[:id])
  	@list = @task.list
  end

  def destroy
  	@task = Task.find(params[:id])
  	@list = @task.list
  	@task.destroy
  	redirect_to list_path(@list)
  end

private
	def task_params
		params.require(:task).permit(:name, :complete)
	end	

end
