class Instrument < ApplicationRecord
	before_destroy :not_referenced_by_any_line_item
	mount_uploader :image, ImageUploader
	serialize :image, JSON
	belongs_to :user
	has_many :line_items

	validates :title, :brand, :price, :model, presence: true
	validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed. " }
	validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum aloud. "}
	# validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

	BRAND = %w( BMW Toyota Hyundai Tesla Mercedes E-Tense )
	FINISH = %w( Black White Navy Blue Red Clear Satin Yellow Seafoam )
	CONDITION = %w( New Excellent Mint Used Fair Poor )

	private

	def not_referenced_by_any_line_item
		unless line_items.empty?
			errors.add(:base, "Line items present")
			throw :abort
		end
	end
end
