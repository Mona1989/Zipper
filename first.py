
try:
  n = input("insert number:")
  n = int(n)
  for row in range(n):
    for column in range(n):
      if column == 0 or column == n-1  or (row == column):
        print('X ', end=" ")
      else :
        print('O ', end=" ")
    print()
except ValueError:
    print("Please input Number only...")  