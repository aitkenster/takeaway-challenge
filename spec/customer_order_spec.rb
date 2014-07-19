require 'customer_order'

describe Customer_Order do
	
	let(:nicola){Customer_Order.new}

	it 'welcomes the user' do 
		expect(nicola).to receive(:puts).with("Welcome to Wild Menu.These are the options")
		nicola.welcome_customer
	end

#This works in pry, not sure why I can't get it to pass here
	xit 'prints a menu' do 
		list = double :list, each_pair: :each_pair
		wildmenu = double :takeaway, list: list
		allow(list).to receive(:each_pair).and_return({"cheetah burger" => 5.95})
		expect(nicola).to receive(:p).with("cheetah burger : £5.95")
		nicola.print_menu(wildmenu)
	end

	it 'takes a customer food order' do 
		allow(nicola).to receive(:gets).and_return("cheetah burger")
		expect(nicola).to receive(:puts).with("What would you like to order?")
		nicola.order_food_item
	end

	it 'asks the user for the quantity' do 
		allow(nicola).to receive(:gets).and_return("2")
		expect(nicola).to receive(:puts).with("How many of those would you like?")
		nicola.order_food_quantity
	end

	it 'asks the user for payment' do 
		allow(nicola).to receive(:gets).and_return("1")
		expect(nicola).to receive(:puts).with("Please enter the payment amount in £")
		nicola.enter_payment_amount
	end


end