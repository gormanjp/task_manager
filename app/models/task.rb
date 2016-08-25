class Task < ActiveRecord::Base
	belongs_to :list
	validates :name, presence: true

	COMPLETE = {
		incomplete: 0,
		complete: 1
	}

	def complete?
		self.complete == COMPLETE[:complete]
	end

	def incomplete?
		self.complete == COMPLETE[:incomplete]
	end

end
