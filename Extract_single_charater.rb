
story = " i love potatoes because you can ... bake them fry them mash them in a stew"

p story.length;

# Index count starts from 0
# In square brkets we put the index position of the letter we want to extract
p story[3];

# We can uese negative numbers this starts backwards

p story[-20];

# Slice does the same thing as []

p story.slice(3);


# To extract multiple characters we use [] or slice and the first number is the startin index, the second number is the number of letters 
# example Start at i (1) and put the next 10 letters including i
# The result is ... :))

p story[1, 10];
p story.slice(1, 10);

p story[0, 75];


# For negative numbers : starts form the negative index and puts out the number of leetrs 
# in the example starts form the -10 index and puts out 5 letters
p story [-10, 5];

