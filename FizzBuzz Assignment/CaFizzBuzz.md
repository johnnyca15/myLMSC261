# Fizz Buzz Assignment Documentation
## Assignment Requirements
- Create a file named {yourlastname}fizzbuzz.py
- Write a Python program that prints all the integers between 1 - 100, except in 3 situations
  1. If an integer in the counter is divisible by 3, print *"Fizz"*
  2. If an integer in the counter is divisible by 5, print *"Buzz"*
  3. If an integer in the counter is divisible by both 3 and 5, print *"FizzBuzz"*


# Starting Off

I guess I'm going to start by defining a few variables.
Either Count or Number and use (count+1)
*While* function might be useful
  - True/False Statements
    - While Count <= 100
  - **+=** should also work as well


- To start out I need to create a counter

  def print_stars(n):
    while n > 0:
      print('*',end='')
      n -= 1

      This should come in handy, I got this from the lecture notes for this week

      Just kidding no it didn't, since this was what I handy



      def count(n):
  while n > 0:
    print(f"{count(n + 1)}")




I looked at a different example and think this might help

      def func(count):
  for i in range(count + 1):
    print(f"{count - i} Lovely!")
///
func(???)


After I changed it up it looked like This

def func(count):
  for i in range(count + 1):
    print(f"{count + i}")

I think I'm getting close, but now I want to add a *while* function, like *while* count doesn't equal to 100, keep adding 1.

OR I can find a way to count to 100 without a true or false Statements

def func(count):
  for i in range(count + 100):
    print(f"{count + 1}")

Lead me to:
2
2
2
2
2
2
2
2
2

so that means that it prints 1 + 1 = 2, and used the final answer to print it out multiple times


while

def func(count):
  for i in range(count):
    print(f"{count + 100}")


Lead me to:
101




So if I take out range(count) and put in range(100) it will go to 100

def func(count):
  for i in range(100):
    print(f"{count + i}")


##Adding the Fizz, Buzz, and Fizz Buzz

Step one done, now I'm confused on whether I add more to the function or create a new variable

def evenOdd(x):
  if (x % 2 == 0):
      print("even")
  else:
      print("odd")


This will help me with dividing


def func(count):
  for i in range(100):
    print(f"{count + i}")
  if count % 3 == 0:
    print("Fizz")


Didn't work, maybe I need to reorganize it and relocate it


###Citation for Help

Couple of days have passed and I was able to figure it out with the help of my friend which I will provide the transcript and the process

So at first I tried to go to the Tutor but even though I was at the right time and place, Matteo wasn't there. I figured that I would be able to do it myself and figure out how to do it myself.

The part where I was confused in was how to print Fizz, Buzz, BuzzFizz and whether I was supposed to define another function or not.

Luckily I was able to get some help from a family friend named Minh Nguyen who studies in University of Minnesota for Aerospace Engineering, and has had experience in C++ and Java. So we both tried to figure out the assignment together as he was learning Python as well on his own time.

1.
  The first thing that we tried out was testing out to see what would happen if we took out the *"Count"* and only have *print(f"i")*.
  At this point I took out the *if* statement so he could understand what was happening with the count function

  The result was that it started from 0 and ended at 99

2.
  I put *count* back in and tried changing *func(1)* to *func(2)*

  The result was that it started at 2 and ended at 101

  So here is where I learned how *count* functions as a starting point and *i* is how it adds up to 100 by 1

3.
  Here is where I put in the *if* statement again, this time instead of having **if count % 3 == 0:**, I put in **if (i % 3 == 0)** instead,

def func(count):
  for i in range(100):
    print(f"{count + i}")
  if(i % 3 == 0):
    print("Fizz")

The Result was that it printed 1-100, and then at the end it said *"Fizz"*

4.
  Minh asked me what was happening and letting me try to figure out what exactly was happening, for which I told him that it was doing the first function first (printing 1-100), and then printing *"Fizz"*

  My first solution was to move the *if* statement right underneath the *print(f"{count + i}"), like this:

  def func(count):
    for i in range(100):
      print(f"{count + i}")
      if (i % 3 == 0):
        print("Fizz")

At first I thought I had it as I saw a lot of Fizz in the results, but upon further inspection I saw that it looked like:

1
Fizz
2
3
4
Fizz
5
6
7
Fizz
8
9
10
Fizz

and so on...
Minh gave me time to figure out what was going on, and "work through the logic" of whats happening and what I was confused about, for which I said:
"I know that it wouldn't replace the number and it would combine the function of printing the number and the word, but I don't understand why it's in between 1 and 2 or 4 and 5 since it's not even close. Like why is it not in the right place?"

5.

My friend then pointed out that how I have **print(f"{count + i}")**, whereas for my *if* statement, I only have *i*.

"*i* is different from *count plus i*"

He refers back to when we tried out only *i* when we were only printing out the numbers and that it only went from 0-99, so that's why I'm comparing two different things.

So that's when I knew that I had to put in **count + i % 3 == 0** and this is where Minh and I were trying to figure out which brackets to use, whether it was () or {}. I made the decision that () was right as it gave me a gray highlight, which I took it as that it grouped it together.

In the end, here was the code:

def func(count):
  for i in range(100):
    print(f"{count + i}")
    if ((count + i) % 3 == 0):
      print("Fizz")

For which the result was:

1
2
3
Fizz
4
5
6
Fizz
7
8
9
Fizz

and so on...

6.
So this is where I knew I had a good problem because I was on the right track as Fizz worked. At this point Minh wanted to do the same thing with Buzz, and have it divisible by 5, but I figured that it would've been the same process so I said that I wanted to *replace* the divisible number of three with *Fizz*

At first my logic was to figure out to see if **replace** was an actual function, or use **dell** (which I'm guessing is delete) as I wanted to delete the numbers that are divisible by 3 and print *Fizz*

Minh told me that wasn't the right direction and said to look at my notes for **If/Elif/Else Conditions** which I was still a little confused about, as I didn't know how that was going to help replace the number.

Minh said to forget about *replacing* it, but instead think about *priority*.

"If it's divisible by three, I should give a **** about that first, before I print out the number"
(His exact words, for which I censored a naughty word)

That's how I realized that **If** it's divisible by three, then it should print Fizz, **Else** it should print the number.

How he mentioned *priority*, he says that the code reads from top to bottom, and that made me understand that I should have moved my **if** statement before the function of printing the number.

So I had this:

def func(count):
  for i in range(100):
    if ((count + i) % 3 == 0):
      print(f"fizz")
    else:
      print(f"{count + i}")

Which the result was:

1
2
Fizz
3
4
5
Fizz

and so on...

So my biggest takeaway was this step, as how Minh described the issue of *replacing* was that it reads it from top to bottom and "once you print s**t, you can't go back to undo it" (again sorry for the language but I want this to be accurate as possible).

So I had to get out of the mindset of taking the product and trying to delete or replace it, and instead set more conditions.

"Taking more preventive measures instead of going back"

7.
 At this point I knew the rest of the steps, and just wanted Minh on the call just for moral support. I knew that the next part was to add two more **Elif** statements, one for *"Buzz"* and another for *"FizzBuzz"*.

 For the *"Buzz"* condition, I put in:

 def func(count):
  for i in range(100):
    if ((count + i) % 3 == 0):
      print(f"Fizz")
    elif ((count + i) % 5 == 0):
      print(f"Buzz")
    else:
      print(f"{count + i}")

In which the results were:

1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz

and so on...

8.

I was glad that I didn't end the call with Minh as I skimmed over number 15, which was divisible by both 3 and 5. He asked me why it was printing *Fizz*, and not *Buzz*, for which I said it was because I put *Fizz* as a higher priority, which was a good segue to the next condition for *FizzBuzz*.

"The thing you should care about, is if it does *BOTH*, then you should do something, then worry about the rest".

as I was typing in the **if** statement for *FizzBuzz*, I made a mistake of using the **and** function as I was going to put in:

**if ((count + i) % 3 == 0 and % 5 == 0)**

Which Minh pointed out how "Math doesn't work that way" and that I had to put the variable again, (count + i).

The other problem I almost ran into was making sure my parentheses was right, as I had:

**if ((count + i) % 3 == 0 and ((count + i) % 5 == 0))**

which I'm glad that the gray highlight thing shows which parentheses I'm closing.

So finally, with help from Minh who was patient and helped guide me without trying to just give me the answers, I got:

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


#Challenges I Faced/Things I Learned

I guess the biggest challenges was that I was still thinking on how to manipulate and changing the code, such as deleting and replacing, when I should be thinking on setting the conditions beforehand and having *preventive* measures first.

The other takeaway was having a priority, and remembering that the code reads from top to bottom. I should have known that while we were going over the **else if** lecture.

All the other issues weren't as major, as it was more on simpler things like making sure I have the variable again for the **and** function and double checking my parentheses and indents and making I have the *:* symbol. 
