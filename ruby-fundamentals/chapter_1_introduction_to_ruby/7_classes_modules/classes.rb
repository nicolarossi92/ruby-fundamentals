 #
 # This class represents a sequence of numbers characterized by the three parameters
 # from, to, and by. The numbers x in the sequence obey the following two constraints:
 #
 # from <= x <= to
 # x = from + n*by, where n is an integer
 #
 # This is an enumerable class; it defines an each iterator below.
include Enumerable # Include the methods of this module in this class
 class Sequence
	def initialize(from, to, by)
		@from, @to, @by = from, to, by
	end
 # Thew initialize method is special; it is automatically invoked to initialize
 # newly created instance of the class
 # Just save our parameters into instance variables for later use
 # This is the iterator required by the Enumerable module
	def each
		x = @from # Start at the starting point
		while x<= @to # While we haven't reached the end
			yield x # Pass x to the block associated with the iterator
			x += @by  #Increment x
		end
	end
#Define the length method(following arrays)to return the number of
#valuesinthesequence
	def length
		return 0 if @from > @to
		Integer((@to-@from)/@by)+1
	end
# Define another name for the same method
# It is common for methods to have multiple names in Ruby
	alias size length #size is now a synonym for length
# Override the array - access operator to give random access to the sequence
	def[](index)
		return nil if index<0 #Return nil for negative indexes
		v=@from+index*@by #Compute the value
		if v<= @to #If it is part of the sequence
			v #Return it
		else #Otherwise
			nil #Return nil
		end
	end
#Override arithmetic operators to return new Sequence objects
	def*(factor)
		Sequence.new(@from*factor,@to*factor,@by*factor)
	end
	def+(offset)
		Sequence.new(@from+offset,@to+offset,@by)
	end
end

s = Sequence.new(1, 10, 2) # Define a new sequence
s.each { |x| print x} # Prints each element in sequence
puts "\n"
print s[(s.size) -1] # Prints 9
puts "\n"
t = (s + 1) * 2 # From 4 to 22 by 4s
t.each { |x| 
	print x 
	puts "\n"
}