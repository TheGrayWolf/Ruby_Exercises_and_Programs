# Blocks

5.times

#times executes the method x times


# Between curly braces {} is the BLOCK

10.times { puts "Alin is AWESOME ... sometimes ... very rarely ..."};
puts "**********************"

# Using the Keywords DO and END;
2.times do 
	puts "potatooooooo";
	puts "I LOVE POTATOOOOOO";
	puts "For The Horde"
end
puts "**********************"
# | | -> block variables
2.times do |i|
	puts "we are currently on loop number #{i}";
	puts "For The Horde"
end
puts "**********************"

#      ***** EXERCISE *****

# Use the times method to output the first ten multiples of 3 ( 3, 6,9, 12,....30)

10.times {|i|
	puts 3 * (i+1)
}

puts "**********************"

10.times do |i|
	puts 3 * (i+1);
end
puts "**********************"

#     ***** UPTO & DOWNTO *****

5.downto(1){ |i| puts "Countdown: #{i}" }

puts "**********************"

5.downto(1) do |i|
	puts "Countdown: #{i}"
	end

puts "**********************"


5.upto(10) { |i| puts "Countup #{i}"}

puts "**********************"

5.upto(10) do |i|
	puts "Countup #{i}"
	end
# ***** UPTO & DOWN TO re-writen *****