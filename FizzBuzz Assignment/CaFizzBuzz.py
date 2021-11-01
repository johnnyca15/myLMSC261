def func(count):
  for i in range(100):
      if ((count + i) % 3 == 0 and (count + i) % 5 == 0):
          print(f"FizzBuzz")
      elif ((count + i) % 3 == 0):
          print(f"Fizz")
      elif ((count + i) % 5 == 0):
          print(f"Buzz")
      else:
          print(f"{count + i}")
func(1)
