require './lib/menu'
require 'twilio-ruby'
require './lib/customer_order'
class Order

	attr_accessor :order, :order_total, :delivery_message, :payment_amount, :item, :quantity

	def initialize
		@order = []
		@order_total = 0
		@delivery_message = ""
		@payment_amount = 0
		@item = ""
		@quantity = 0
	end

	def add_items_to_order
		quantity.times {order << item}
	end

	def calculate_order_total(menu)
		@order.each do |item|
			@order_total += menu.list.fetch(item)
		end
	end

	def verify_payment
		 raise "I'm sorry, you do not seem to have input the correct amount. Please try again" if payment_amount != order_total
		 @delivery_message = (Time.now+3600).strftime("Thanks for ordering with Wild Menu. Your order has been processed and will be delivered at %I:%M%p")
	end

	def texting_service

		account_sid = 'AC5170bed17f9497383281483b3f8f91dd' 
		auth_token = 	'a9f2878abbca08f8e67d4bd37986a39c'
 
	# sets up a client to talk to the Twilio REST API 
	@client = Twilio::REST::Client.new account_sid, auth_token 
	 
	@client.account.messages.create({
		:from => '+441553750075', 
		:to => '+447545142090', 
		:body => delivery_message,  
	})
	end

	
end
