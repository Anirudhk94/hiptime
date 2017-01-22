class Item < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, length: { minimum: 5}
	validates :description, presence: true

	def completed?
		!completed_at.blank?
	end
end
