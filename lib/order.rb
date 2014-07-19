require './lib/menu'
class Order

	attr_accessor :order, :order_total

	def initialize
		@order = []
		@order_total = 0
	end

	def place_order(item, quantity)
		quantity.times {@order << item}
	end

	def calculate_order_total(menu)
		@order.each do |item|
			@order_total += menu.list.fetch(item)
		end

	end

	



end