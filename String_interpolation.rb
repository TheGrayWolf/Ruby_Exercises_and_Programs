# Injecting content in to string

p 5;
p 5.next;

# to_s changes the INT var to String 
p 5.to_s;

name = "Alin";
p "Hello #{ name}, How are you";

age = 35;

p "I am " + age.to_s + " years old";

p "I am #{age} years old";

p "The result of adding 1 + 1 is #{1 + 1}";

p "In 5 years i will be #{age + 5} years old";

x = 5;
y = 8;

p " The sum of x + y is #{x + y}";