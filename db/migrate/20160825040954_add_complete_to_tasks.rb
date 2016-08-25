class AddCompleteToTasks < ActiveRecord::Migration
  def change
  	add_column :tasks, :complete, :integer, default: 0
  end
end
