import math as orange
import random as blue

result_1 = orange.pow(2,4)
print("Result_1 is" , result_1)

result_2 = orange.sqrt(16)
print("result_2 is" , result_2)

result_3 = blue.randint(0,100)
print("result_3 is" , result_3)

names = ["Bob" , "Joe", "Tim", "Jack"]
print("Original names:" , names)

blue.shuffle(names)
print("Shuffled names:" , names)

result_4 = blue.choice(names)
print("Chosen name is" , result_4)