path = 'rozliczenie.csv'
mode = 'r'

with open(path, mode) as f:
    content = f.readlines()

for i in range(len(content)):
    content[i] = content[i].split(',')

print(content)

Result = 0
for i in range(len(content)):
    if i > 0:
     Result += int(content[i][1])




srednia = round((Result/(len(content)-1)),2)
print(srednia)


Result1 = 0
for i in range(1,len(content)):
    if content[i][3] == 'k' and content[i][4] == 't\n':
        Result1 += 1



print(Result1)