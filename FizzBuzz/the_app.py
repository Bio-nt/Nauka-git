def fizzbuzz(number):
    try: int(number)
    except ValueError:
        return 'blad'

    else:
        a = number % 3
        b = number % 5
        if number <= 0:
            return None
        elif a == 0 and b == 0:
            return ('FizzBuzz')
        elif b == 0:
            return ('Buzz')
        elif a == 0:
            return ('Fizz')
        else:
            return (number)


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



