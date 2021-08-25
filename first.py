n = input("insert number:")
n = int(n)

for i in range(n):
  for j in range(n):
    if j == 0 or j == n-1  or (i == j and (j > 0 and j < n)):
      print('X ', end=" ")
    else :
      print('O ', end=" ")
  print()