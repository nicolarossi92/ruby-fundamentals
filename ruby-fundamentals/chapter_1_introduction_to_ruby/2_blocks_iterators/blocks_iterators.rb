3.times {print "Ruby!"}

puts "\n" 

a = [3, 2, 1] # Array literal
a[3] = a[2] - 1 # We use square brackets to query and set array elements
a.each do |elt| # each is an iterator. The block has a parameter elt
	print elt + 1 # prints 4321
end # this block was delimited with do/end instead of {}

puts "\n"

h = {
	:one => 1,
	:two => 2
}
h[:one]
h[:three] = 3
h.each do |key, value|
	print "#{value}: #{key};"
end
 