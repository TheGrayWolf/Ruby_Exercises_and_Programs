# A variable is a placeholder name given to a certian object such as a string

#In Ruby variable types do not have to be declares INT STR BOL DOUBLE

# In Ruby variables are dinamically tiped: meaning that te same VAR can point to INT or a STR depending on the method
favorite_number = 71;
p favorite_number;
favorite_number ="Seventy-One"
p favorite_number;
# What happens after the = ( on the right ) is always computed first

# Variables are case sensitive

# do not use ruby keywords for variables 

name = "Alin";
last_name = "Craciunescu";
smart = false;
age = 35 + 1;


puts name;
puts last_name;
puts name + " " + last_name;

puts

puts smart;
puts age - 1;
puts favorite_number;

puts

a = 1;
b = 2;
c = 3;

print a, b, c;

puts
puts

print a, b, c;
puts
p a, b, c;

#paralel variable asignement

a, b, c = 10, 20, 30;
p a, b, c;

puts
puts

#swaping variables

a = 1;
b = 2;

a, b = b, a;

p a, b;
