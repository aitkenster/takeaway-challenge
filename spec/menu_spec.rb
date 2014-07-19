require 'menu'

describe Menu do 
	it 'should hold a list of menu items and their prices' do 
		my_menu = Menu.new
		my_menu.add_item("bread", 5.50)
		expect(my_menu.list).to include({"bread" => 5.50})	
	end
end

describe WildMenu do 
	it 'should have a list of the wild menu items' do 
		my_menu = WildMenu.new
		expect(my_menu.list).to include({"meerkat ragout" => 7.50})
	end
end