import sys

while True:
    line = list(map(int, sys.stdin.readline().split()))
    if(line[0] == 0):
        break

    hypo = max(line)
    line.remove(hypo)
    if line[0]**2 + line[1]**2 == hypo**2:
        print("good")
    else:
        print('bad')