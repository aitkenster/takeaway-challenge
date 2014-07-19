require 'order'
require 'menu'

describe Order do 

	let(:nicola){Order.new}

	it 'allows the user to order an item' do 
		nicola.place_order("cheetah burger", 1)
		expect(nicola.order).to include("cheetah burger")
	end

	it 'allows the user to order multiple items' do 
		nicola.place_order("cheetah burger", 2)
		expect(nicola.order.count).to eq 2
	end

	it 'calculates the cost of the order' do 
		list = double :list
		wildmenu = double :menu, list: list
		allow(list).to receive(:fetch).with("cheetah burger").and_return(5.95)
		nicola.place_order("cheetah burger", 2)
		nicola.calculate_order_total(wildmenu)
		expect(nicola.order_total).to eq 11.9
	end

	it 'sends an order delivery message if the users payment is the same as the order total' do 
		nicola.order_total = 1
		test_message = (Time.now+3600).strftime("Thanks for ordering with WildMenu. Your order has been processed and will be delivered at %I:%M%p")
		nicola.verify_payment(1)
		expect(nicola.delivery_message).to eq test_message
	end

	it 'does not send an order delivery message if the users payment is not the same as the order total' do 
		nicola.order_total = 2
		expect{nicola.verify_payment(1)}.to raise_error(RuntimeError)
	end

end