x = 5
y = 6
minimum = if x < y then x else y end # will return 5

puts minimum

puts 1 + 3 # addition
puts 1*2 # multiplication
puts 1 + 2 == 3 # => true == tests equality
puts 2 ** 1024 # 2 to the power 1024: Ruby has arbitrary size
puts "Ruby" + "rocks" # => "Ruby rocks!" : string concatenation
puts "Ruby" * 3 # => "Ruby!Ruby!Ruby!": string repetition
puts "%d %s" % [3, "rubies"] # => "3 rubies": Python style, printf formatting
puts "Minimum value between #{x} and #{y}: #{minimum}"  # => will print 5