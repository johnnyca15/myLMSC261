#Documentation for Pyramid Assignment
Using the lecture notes, I found that the last example was close to the assignment and that I should use that as my base and see what I can change to fit the Assignment

for i in range(10):
  for j in range(10):
    if j >= i:
      print(j, end='')

So this is all for numbers and it starts with a lot of numbers, and work down to the left. What I need to change is from numbers to *#* and have it descending to the right instead of left

for i in range(num):
  for j in range(num):
    print('#', end='')
  print()

  from Assignment-Pyramid MarkDown file
  This creates the # format but is a square than a Pyramid
  Must be a combination of the first and second code


for i in range (10):
	for j in range(10):
		if j >= i:
			print('#', end='')
		print()

   My first attempt, it did descend but it didn't stack

   Should have gone to the tutor since I'm confused

for i in range (10):
 	for j in range(10):
 		if j <= i:
 			print('#', end='')
 		print()

This does the opposite but at least now it goes from least to greatest.

Maybe if I add a ({i}=1) function or something, that might work?

Reread the assignment and found that I have to create an input/ask the user what the *stack* is

Had to look at the Boston Season exercise to figure out exactly how I used the input function.
So *stacks*= how long the pyramid will be.
I know the **else**: function would be any number outside of 1-8 so I can put in "*The number you put in is invalid*".

Here is where I was very confused on the next steps and should have gone to the tutor for help
  ended up resorting to a youtube video that I will post the reference and link and citation:

Title: Python pattern program - How to print stars "*" in reverse right angle triangle shape | star pattern

Creator: Tycomac Codes

Link: https://www.youtube.com/watch?v=UHwnZpGDkk4



  Here is what I learned/relearned and how I used this video to help me with this assignment:

  Each time I added something new, I saved and ran it just to make sure I'm doing it right and making progress.
  (Here is where I also learned that I shouldn't do everything on IDLE and that I'd have to create the code and then run it so I can do stuff with the input function)
    1. create a variable ("stacks") and take the input from the user
      - **stacks = input("enter the number of stacks here: ")**
    2. Add int, if left without it, the input is going to be in the string
      - int=integer, so numbers
      - **stacks = int(input("enter the number is stacks here: "))**
    3. Creating a *for* loop.
      - **for i in range(stacks):**
        - so if the user enters stacks as 5, the value starts at 0, and end at 4,
          - 0, 1, 2, 3, 4
            - Doesn't take the last value
    4. Adding the spaces and the *#*
     - **print(" " * (stacks - i) + "#" * (i + 1))**
        - here is where I immediately knew what was happening and that it all started to make sense. It becomes a formula to add and multiply based off of the variables given
          - so we would add a space, and for a given amount, it would be multiplied by (stacks - i)
            - example: if stacks is 4, then it is 4 - 0.
          - and then you add in the *#*, and in order to do that you have to add it by i, to understand how many *#* are to be placed
            - example: if stacks is 4, then it is "*#*" times (0 + 1)
        - so if stacks is 4, then the equation would be:
          " " * (4 - 0) + "#" * (0 + 1)
           result: 4 spaces, and one #

  So the results that I got from the video was:

  stacks = int(input("Enter number between 1-8 here: "))

for i in range(stacks):
    print(" " * (stacks - i) + "#" * (i + 1))


Now to add a limit to it, and having the stacks input be 1 ~ 8, I would have to add an *if* and *else* function

Added a function that if the user enters a negative number, it prints "Must be a positive number"

I added a condition for the pyramid, that it only works if it's less than or equal to 8

I created an else, that if it's not a negative number, or between 1-8, then it would print "Number of stacks must be between 1-8"

**Challenges I Faced**
Quite a lot actually

I've had a lot of issues during class that I can't follow along the code along sometimes, so it's mostly doing catch up.

I felt like I was dragging behind and I wasn't understanding the assignment and what the next step is like my peers. I know that I should look into talking to the Tutor for help.

There were functions that I still wasn't able to understand and that I had to relearn it (ex: int and inputs, and that it's a call and response)

I was still thinking broadly and not in specific details like transitioning from spaces to # and how it's a math equation with variables.

Also I almost gave up on trying to figure out why it wasn't running when I realized that I put in *stack* instead of *stacks*
