potato = "i love potatoes you can boil them fry them mash them put them in a stew"

p potato[0..6];
p potato.slice(0..6);

puts

# ... does not include the LAST character ( the 6'th )
p potato[0 ... 6];
p potato.slice(0 .. 6);

puts
# If the number of characters is larger than the actual number of characters than we only get the actual characters 
p potato[3..100];

puts

p potato[25..-9];