# input value = argument
# parameter = placeholder name

p 20.between?(10, 50);
p 20.between?(30, 50);
p 1.2.between?(1.1, 10);
p -10.5.between?(-20, 0);
p 5.3.between?(8.8, 9.6);

p 10.5.to_i

# FLOOR rounds number down 10.5 -> 10
p 10.5.floor;

# CEIL rounds number up 10.5 -> 11
p 10.5.ceil;

# ROUND rounds number to a given positions 
#  round > .5 => +1
#  round < .5 => number
#  round(x) => Y.312....(x values after the .)

p 3.14159.round;
p 3.63453245.round;
p 4.4234324.round(3);
p 4.4236324.round(3);

# ABS absolute value always is a positive number
p -25.35.abs;

