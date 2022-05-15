def isfloat(num):
    try:
        float(num)
        return True
    except ValueError:
        return False


num1 = input("Enter first number: ")
#checking if number is float first
if not isfloat(num1):
    print("Please enter a valid number")
    num1 = input("Enter first number: ")
op = input("Enter operator (+,-,/,*): ")
#checking if operator is valid
if op not in("+","-","/","*"):
    print("Please use a valid operator,(+,-,/,*)")
    op = input("Enter operator (+,-,/,*): ")
num2 = input("Enter second number: ")
#checking if number is float first
if not isfloat(num2):
    print("Please enter a valid number")
    num2 = input("Enter second number: ")


if op == "+":
    print("the answer to " + str(num1) + "+" + str(num2)+ " is "+ str(float(num1) + float(num2)))
elif op == "-":
    print("the answer to " + str(num1) + "-" + str(num2) + " is " + str(float(num1) - float(num2)))
    #print(num1 - num2)
elif op == "/":
    print("the answer to " + str(num1) + "/" + str(num2) + " is " + str(float(num1) / float(num2)))
    #print(num1/num2)
elif op == "*":
    print("the answer to " + str(num1) + "*" + str(num2) + " is " + str(float(num1) * float(num2)))
    #print(num1*num2)
else: print("Please use a valid operator,(+,-,/,*)" )