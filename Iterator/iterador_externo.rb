class IteradorArray

	def initialize(array)
		@array = array
		@index = 0
	end
	
	def siguiente?
		@index < @array.length
	end
	
	def get
		@array[@index]
	end
	
	def siguiente
		value = @array[@index]
		@index += 1
		value
	end
	
end
