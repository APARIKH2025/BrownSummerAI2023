from math import pow as power
from math import sqrt as squareroot
from random import randint as randomint
from random import shuffle as change
from random import choice as pick

result_1 = power(2,4)
print("Result_1 is" , result_1)

result_2 = squareroot(16)
print("result_2 is" , result_2)

result_3 = randomint(0,100)
print("result_3 is" , result_3)

names = ["Bob" , "Joe", "Tim", "Jack"]
print("Original names:" , names)

change(names)
print("Shuffled names:" , names)

result_4 = pick(names)
print("Chosen name is" , result_4)