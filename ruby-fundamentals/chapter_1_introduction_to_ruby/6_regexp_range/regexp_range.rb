x = /[Rr]uby/ # matches "Ruby" or "ruby"
y = /\d{5}/ # matches 5 consecutive digits

z = 1..3 # All x where x is between 1 and 3 included
w = 1...3 # All x where x is between 1 and 3 excluded

puts "#{x}"
puts "#{z}"