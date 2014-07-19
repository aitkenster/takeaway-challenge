class Menu

	attr_accessor :list

	def initialize
		@list = {}
	end

	def add_item(item, price)
		@list[item] = price
	end
end

class WildMenu < Menu

	def initialize()
		@name = "Wild Menu"
		@list = {"meerkat ragout" => 7.50 ,"cheetah burger" => 5.95,
			"crispy antelope ears" => 2.50 ,"warthog kabab" => 8.25}
	end

	





end