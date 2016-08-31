module TasksHelper

	def li_class_for_task(task)
		"completed" if task.complete?
	end

	def li_for_task(task)
		if task.id
			content_tag_for :li, task, class: li_class_for_task(task) do
				yield
			end
		end
	end
end
