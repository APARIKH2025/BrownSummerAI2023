class Student:
 def __init__(self, name, course):
    self.name = name
    self.course = course

 def aboutme(self):
    print("Hi, my name is " + self.name + " and I take " + self.course)

if __name__ == "__main__":
   s1 = Student("Anish", "Math")
   s1.aboutme()