class AddCompleteToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :complete, :integer
  end
end
