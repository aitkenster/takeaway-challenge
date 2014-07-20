

class Person

	def initialize(name, age)
		@name = name
		@age = age
	end

	def who_am_i
		puts "you are #{@name}, and you are age #{@age}."
	end

	def my_accessor(attribute)
		read_method(attribute)
		write_method(attribute)
	end

	def read_method(attribute)
		def attribute
			@attribute
		end
	end

	def write_method(attribute)
		def attribute=(attribute)
			@attribute = attribute
		end
	end

end

nicola = Person.new("nicola", 23)

nicola.who_am_i
