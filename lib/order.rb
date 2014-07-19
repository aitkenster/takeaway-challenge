# require './lib/menu'
require 'twilio-ruby'
class Order

	attr_accessor :order, :order_total, :delivery_message

	def initialize
		@order = []
		@order_total = 0
		@delivery_message = ""
	end

	def place_order(item, quantity)
		quantity.times {@order << item}
	end

	def calculate_order_total(menu)
		@order.each do |item|
			@order_total += menu.list.fetch(item)
		end

	end

	def verify_payment(payment_amount)
		generate_delivery_text_message if payment_amount == order_total
	end

	def generate_delivery_text_message
		@delivery_message = "Your order is ready"
	end



	# def texting_service(generated_message)
	# 	@delivery_message = delivery_message
	# end

	



end