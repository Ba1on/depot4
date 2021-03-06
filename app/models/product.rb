class Product < ActiveRecord::Base
	has_many :line_items
	has_many :orders, through: :line_items
	
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true

	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'URL должен указывать на изображение формата GIF, JPG или PNG'
	}

	validates :title, length: {minimum: 10,
		message: 'название долно иметь не менее 10 символов'}

	def self.latest
		Product.order(:updated_at).latest
	end

	

	before_destroy :ensure_not_referenced_by_any_line_item

	private

	#убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существуют товарные позиции')
			return false
		end
	end
end
