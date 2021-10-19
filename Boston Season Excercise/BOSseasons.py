Season = int(input("Enter number here: "))
if Season == 12 and Season <= 3:
	print("Boston is in Winter")
elif Season >= 4 and Season <=6:
	print("Boston is in Spring")
elif Season >= 7 and Season <= 9:
	print("Boston is in Summer")
elif Season >= 10 and Season <= 11:
	print("Boston is in Autumn")
else:
	print("There are only 12 months in a year in Boston")
