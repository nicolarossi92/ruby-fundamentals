x = 1
y = 0

puts "x value is assigned the value #{x} while y is #{y}"

y += 1 # Assignment combined with operator

puts "Now y is #{y}"

x,y = 1,2

puts "x value is assigned the value #{x} while y is #{y}"

x,y = y,x # Swapping variables values

puts "After swapping x is now #{x} and y is #{y}"

x,y,z = [1, 2, 3] # Array element automatically assigned to variables

puts "Assigning array elements of array [1, 2, 3] to variables x, y ,z will result in #{x}, #{y}, #{z}"