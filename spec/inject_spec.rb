require 'inject' 

context 're-write inject method' do
	
	it 'should carry out the inject method' do 
		my_array = [1,2,3,4]
		injected_array = my_array.inject(1){|a, b| a+b}
		expect(injected_array).to eq 11
	end

	it 'should carry out Nicolas inject method' do 
		my_array = [1,2,3,4]
		injected_array = my_array.nicolasmethod(1){|a, b| a+b}
		expect(injected_array).to eq 11
	end

	it 'should carry out Nicolas inject method when multiplying' do 
		my_array = [1,2,3,4]
		injected_array = my_array.nicolasmethod(1){|a, b| a*b}
		expect(injected_array).to eq 24
	end

end