require 'order'

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
end