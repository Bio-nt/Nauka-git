import datetime
import time

today = datetime.date.today()


print(type(today))
print(today)

data1 = today.strftime("Dzisiaj jest %d dzien %m miesiac %Y rok")
data2 = today.strftime('%d/%m/%Y')
print(data1)
print(data2)

now = datetime.datetime.now()
my_now = now.strftime('%H:%M:%S %d/%m/%Y')
print(my_now)


for i in range (10):
    now = datetime.datetime.now()
    name = 'raport.txt'
    my_now = now.strftime('%H%M%S')
    print(name[:5] + my_now + name[-4:])
    time.sleep(2)


'''
Newfile = open('raport.txt', 'w')
with open('raport.txt', 'w') as Newfile:
    Newfile.write()
'''