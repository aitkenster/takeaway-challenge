class Customer_Order

	attr_accessor :item, :quantity

	def initialize
	end

	def welcome_customer
		puts "Welcome to Wild Menu.These are the options"
	end

	def print_menu(takeaway)
		takeaway.list.each_pair{|food, price| p "#{food} : £#{price}" }
	end

	def order_food_item
		puts "What would you like to order?"
		@item = gets.chomp.downcase
	end

	def order_food_quantity
		puts "How many of those would you like?"
		@quantity = gets.chomp.to_i
	end

	def enter_payment_amount
		puts "Please enter the payment amount in £"
		payment_amount = gets.chomp.to_i
	end
end