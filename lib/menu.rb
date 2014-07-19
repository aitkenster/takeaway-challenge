class Menu

	attr_accessor :list

	def initialize
		@list = []
	end

	def add_item(item, price)
		@list << {item => price}
	end
end