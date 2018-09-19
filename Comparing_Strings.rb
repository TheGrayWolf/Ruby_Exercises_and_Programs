
a = "Hello";
b = "hello";
c = "Hello";

puts

# String comparison is case and lenght sensitive

p a == b; #. ==> False
p a != b; #. ==> True
p a == c; #. ==> True
p b == c; #. ==> False
p a != c; #. ==> False

puts

# The < and > signs compare letters for exaple 
# A < B
# AA < AB
# In Ruby capital letters come before lowercase letters for example
# A < a

# EXAMPLE:

p "a" < "b"
p "AAple" < "ABanana";
p "hello" < "help";
p "Help" < "help";

puts

# We can compare boolean

p true == false;
p true == true;
