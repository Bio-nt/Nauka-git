import os
import time

import fontTools.t1Lib

print("prosto")


"""
def findfile(name, path):
    for dirpath, dirname, filename in os.walk('C:\\Users\\vdi-student\\Desktop\\Nauka-git'):
        if name in filename:
            return os.path.join(dirpath, name)
filepath = findfile("new.txt", "/")
"""
filepath2 = os.path.isfile('C:\\Users\\vdi-student\\Desktop\\Nauka-git\\new.txt')
if filepath2 == True:
    a = "Plik new.txt istnieje"
else:
    a = "Plik new.txt nie istnieje"

print(a)
f = open('result.txt', 'w')
with open('result.txt', 'w') as f:
    f.write(a)

os.system('cmd /c "cd C://Users//vdi-student//Desktop && dir /s new.txt >> result.txt')

"""
f = open('result.txt', 'w')
with open('result.txt', 'w') as f:
    f.write(filepath)
"""