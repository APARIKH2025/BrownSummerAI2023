class Student:
 def __init__(self, name, course):
    self.name = name
    self.course = course

 def aboutme(self):
    print("Hi, my name is " + self.name + " and I take " + self.course)

s1 = Student("Anish", "Math")
s1.aboutme()