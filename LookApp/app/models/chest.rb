class Chest < ActiveRecord::Base
	has_many :order_items
	before_save :update_price

	def price
		chest_items.collect { |oi| oi.valid? ? (oi.price) : 0 }.sum
	end
end