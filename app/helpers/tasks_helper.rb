module TasksHelper

	def li_class_for_task(task)
		"completed" if task.complete?
	end

end
