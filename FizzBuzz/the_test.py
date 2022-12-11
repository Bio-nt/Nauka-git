from the_app import *

def test_0():
    assert fizzbuzz(1) == 1
    assert fizzbuzz(2) == 2
    assert fizzbuzz(3) == 'Fizz'
    assert fizzbuzz(15) == 'FizzBuzz'
    assert fizzbuzz(0) == None


def test_1():
    assert fizzbuzz('kot') == 'blad'