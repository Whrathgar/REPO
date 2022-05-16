
emp_file = (open("Employees.txt","r"))
for employee in emp_file.readlines():
    print(employee)

emp_file.close()