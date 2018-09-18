#  ***** Step Method *****

puts "**********************"
puts "Step Method"
puts "**********************"

# Step methods allows us to select the increment ( 1 3 5 ,,,)

0.step(100, 5) {|number| puts number}

# 0 => Starting number
# 100 => End number
# 5 => Increment ( + 5 )
# n => number

puts "**********************"

0.step(85, 7) do |n|
puts n;
end