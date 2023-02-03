from operator import add

y = 'this is a string'
print(y)
x = max(50, 300)
print(x)

add(4,7)

"""So if there is not a return statement in a function,
its going to set the value equal to "None" and you can
see this in the code below when you try to print 'y' """
x = 0
def myFun():
    global x 
    x = 4 + 7
y = myFun()
print(x)
print(y)