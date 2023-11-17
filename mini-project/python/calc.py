import sys 

def add(num1,num2):
    result = num1 + num2
    return result


def sub(num1,num2):
    result = num1 - num2
    return result


def mul(num1,num2):
    result = num1 * num2
    return result

num1 = float(sys.argv[1])
operation = sys.argv[2]
num2 = float(sys.argv[3])
print(num1," ",num2," ",operation)

if operation == "add" or operation == "+":
    output = add(num1,num2)
    print("RESULT: ",output)
elif operation == "sub" or operation == "-":
    output = sub(num1,num2)
    print("RESULT: ",output)
elif operation == "mul" or operation == "*":
    output = mul(num1,num2)
    print("RESULT: ",output)
else:
    print("Funtion are not supported yet")