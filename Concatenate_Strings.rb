
# Concatenation is the process of adding two strings together
# Concat you and me => youandme
# Concat permanently modifyes the string
# Shovel permanently modifyes the string

first_name = "Harry ";
last_name = "Potter";

p first_name + last_name;

puts

name = first_name + last_name;

puts name;

puts

# !!!!! Concat permanently modifyes the string !!!!!
p first_name.concat(last_name);
puts first_name;

puts 

# shovel opperator << does the same thing as concatenate
# !!!!! Shovel permanently modifyes the string !!!!!
first_name = "Harry ";
last_name = "Potter";

p first_name << last_name << " PotatoKing";

puts

# Prepend adds the adrgument in front of the string
# !!!!! prepebd permanently modifyes the string !!!!!
p first_name.prepend(last_name);
