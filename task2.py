choice = input("Do you want hours to minutes [y/n]: ") == 'y'
if (choice):
    print(int(input("How many hours: ")) * 60)
elif(not(choice)):
    print(int(input("How many minutes: ")) / 60)