path = 'rozliczenie2.csv'    #mozna do jakiegokolwiek plik dac sciezke
mode = 'r'
Result = 0
Result1 = 0


with open(path, mode) as f:
    content = f.readlines()

for i in range(len(content)):
    content[i] = content[i].split(',')
print(content)

for i in range(len(content)):
    content[i][-1] = content[i][-1].replace('\n', '')
print(content)

indexWy = content[0].index('wyplata')
indexMa = content[0].index('czy na macieżyńskim')

for i in range(len(content)):
    if i > 0:
        Result += int(content[i][indexWy])

srednia = round((Result/(len(content)-1)),2)
print(srednia)

for i in range(1,len(content)):
    if content[i][3] == 'k' and content[i][indexMa].lower() == 't':
        Result1 += 1
print(Result1)

