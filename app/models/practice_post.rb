class PracticePost < ApplicationRecord
	has_one_attached :image
	def meta
		self.author
	end
end
