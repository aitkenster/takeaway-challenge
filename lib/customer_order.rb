require './lib/order.rb'
require './lib/menu.rb'
class Customer_Order

	attr_accessor :this_order, :selection 

	def initialize
		@this_order = Order.new
		@selection = WildMenu.new
	end

	def welcome_customer
		puts "Welcome to #{selection.name}.These are the options"
	end

	def print_menu(takeaway)
		takeaway.list.each_pair{|food, price| p "#{food} : £#{price}" }
	end

	def order_food_item
		puts "What would you like to order? Press return when you have finished chosing items."
		this_order.item = gets.chomp.downcase
	end

	def order_food_quantity
		puts "How many of those would you like?"
		this_order.quantity = gets.chomp.to_i
	end

	def enter_payment_amount
		puts "Your order total is #{@this_order.order_total}"
		puts "Please enter the payment amount in £"
		this_order.payment_amount = gets.chomp.to_f
	end

	def confirm_payment
		puts "Payment received."
	end

	def place_order
		welcome_customer
		print_menu(selection)
		order_food_item
		while !this_order.item.empty?
			order_food_quantity
			this_order.add_items_to_order
			order_food_item
		end
		this_order.calculate_order_total(@selection)
		enter_payment_amount
		this_order.verify_payment
		confirm_payment
		this_order.texting_service
	end

end



