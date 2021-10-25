stacks = int(input("Enter number of stacks between 1-8: "))
if stacks <= 0:
    print("Number of stacks must be a positive number")
if stacks <= 8:
    for i in range(stacks):
        print(" " * (stacks - i) + "#" * (i + 1))
else:
    print("Number of stacks must be between 1-8")
