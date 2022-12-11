def fizzbuzz(number):
    a = int(number) % 3
    b = int(number) % 5


    if a == 0 and b == 0:
        return('FizzBuzz')
    elif b == 0:
        return('Buzz')
    elif a == 0:
        return('Fizz')
    else:
        return(number)



"""
for i in range(10):
    X = input('podaj liczbe ')"""



