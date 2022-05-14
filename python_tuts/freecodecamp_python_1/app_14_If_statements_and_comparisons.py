



def max_num(num1, num2, num3):
    if num1 >= num2 and num1>= num3:
        return num1
    elif num2 >= num3 and num2 >= num1:
        return num2
    else:
        return num3
num1 = input("Type the first number: ")
num2 = input("Type the second number: ")
num3 = input("Type the third number: ")

print("The highest of the three is: \n"
      + str(max_num(num1,num2,num3)))