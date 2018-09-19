# Strings are represented by the double quotes => ""
# String means that everithing is treated as text as long as it is between quotes ""
# Strings can be assigned to variables
puts "Hi there, I am a string"
puts "A String can include characters and numbers even a space :# $ % 123123 a. fasd asd asd dasda "

name = "PotatoKing" 
revenue = "12 $"
puts name , revenue;

space = " "
p space.length

puts

empty = ""
p empty.length;

puts

p name.class;
p space.class;
p revenue.class;
p empty.class;

puts

name = String.new("potatoo");
p name;

p 5.to_s;
