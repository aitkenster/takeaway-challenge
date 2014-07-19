class Order

	attr_reader :order

	def initialize
		@order = []
	end

	def place_order(item, quantity)
		quantity.times {@order << item}
	end

end