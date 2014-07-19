class Array
	def nicolasmethod(num)

		total = num
		value = 0
		self.each do |item|
			total = yield(item, total)
		end
		return total
	end
end
