class Review < ApplicationRecord
	belongs_to :product

	def average_star
    @average = self.review.pluck(:star).sum / self.review.count
  end
end
