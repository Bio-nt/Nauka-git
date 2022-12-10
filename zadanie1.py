#otrzymuje prgram liczbe 4 cyfrowa i zwraca sume cyfr

X = list(input('podaj liczbe'))


lenList = len (X)

Result = 0
for i in range(lenList):

     calc = Result + int(X[i])
     Result = calc

print(calc)

