#Starting Off

 **error:** implicit declaration of function 'AudioGetCurrentHostTime' is invalid in C99 [-Werror,-Wimplicit-function-declaration]

 This the Error message I got.

 I also have 36 Warnings and only 1 Error

 Going to ask to see if Rachel knows how to fix this because I'm lost

##Solution

- Take this: **sudo python3 setup.py install --use-coreaudio --debug**
- Get rid of **--use-coreaudio**
- Try
- Worked (I think)
- Yay

##Moving onto Assignment Pyo

- Tried clicking onto melodies.py file and click run on top but got this:

- Pyo warning: Portaudio input device `MacBook Pro Microphone` has fewer channels (1) than requested (2).
Pyo warning: Portmidi warning: no midi device found!
Portmidi closed.

- Didn't work at first but then remembered that I muted my MacBook

- Works now


##Dulcimer debugging

- Moving onto the **dulcimerplayer.py**

- Didn't work, had this error message:

Traceback (most recent call last):
  File "/Users/johnnyca15/Documents/GitHub/lmsc261fa21/110Debugging/Assignment-Pyo/dulcimerplayer.py", line 4, in <module>
    snd = SndTable("/Users/rrome/Documents/GitHub/lmsc261sp21/110Debugging/dulcimer.aiff")
  File "/Library/Frameworks/Python.framework/Versions/3.9/lib/python3.9/site-packages/pyo-1.0.4-py3.9-macosx-10.9-x86_64.egg/pyo/lib/tables.py", line 1650, in __init__
    _size, _dur, _snd_sr, _snd_chnls, _format, _type = sndinfo(p)
TypeError: cannot unpack non-iterable NoneType object




And here is what I tried to Run

from pyo import *
s = Server().boot()
s.start()
snd = SndTable("/Users/rrome/Documents/GitHub/lmsc261sp21/110Debugging/dulcimer.aiff")
env = HannTable()
pos = Phasor(freq=snd.getRate()*.25, mul=snd.getSize())
dur = Noise(mul=.001, add=.1)
g = Granulator(snd, env, [1, 1.001], pos, dur, 32, mul=.1).out()

Looking at the 4th line (as mentioned in the Error Code)

**snd = SndTable("/Users/rrome/Documents/GitHub/lmsc261sp21/110Debugging/dulcimer.aiff")**


Also I only followed the steps from the **110Debugging** with help from Rachel. Looking around I saw that other people had to download additional stuff and I don't know what or where or how

So I talked to Rachel and she told me that I'm on the right track, and that the problems that I'm having are right. So from here on out I think I should be fine and that the issue is because of the code and I have to debug it.

##Observations and Analysis

For safety reasons and not making Rachel mad, I noticed that if I were to change the code and run it, it would save the files in the class repository, so I'm going to copy the code and put it into my repository

Another thing that I noticed when rereading my earlier notes is the fourth line and how it says **lmsc261sp21** when we're in the Fall 2021 Semester not Spring.

Looking at the the fourth line, it looks like a file link and that it's trying to go through these folders like:

(User) -> (rrome) -> (Documents) -> (GitHub) -> (lmsc261sp21) -> (110Debugging) -> (dulcimer.aiff)

So I think my plan of action is to guide it into the right folder and make sure it's in the right place (without messing up the class repository and make Rachel mad)

##Steps To Solving

1. Copy and pasted the dulcimerplayer python code and created my own so I won't affect Rachels. Saved it under my own file.
2. Did the same thing for melodies.py file, and ran it just to see if my copy works, which it did.
3. Trying to figure out how to get to the right file and rewrite the 4th line.
  - from what I remember, I think I can use terminal to figure out which direction and path I can take to get to that file, which should help with the directory
4. I remembered that I can drag the file into **terminal** and it'll show my the directory path to the file, so I did that, and then copied "**/Users/johnnyca15/Documents/GitHub/myLMSC261/Debugging\ Assignment/dulcimerplayer.py**"
5. After comparing the original code, and the one I was about to put it, I realized that it was an **aiff** file, so I have to find the directory path to the actual audio file. I'm about to copy and paste the **aiff** file into my own file.
6. Copied the **dulcimer.aiff** file into my personal assignment folder in hopes that when I turn in the assignment, I have the file for everything there and that it doesn't mess with the class folder.
7. dragged the copy of the **dulcimer.aiff** file into terminal and copied the directory path
  - **/Users/johnnyca15/Documents/GitHub/myLMSC261/Debugging\ Assignment/dulcimer.aiff**
8. Ended up with:

from pyo import *
s = Server().boot()
s.start()
snd = SndTable("/Users/johnnyca15/Documents/GitHub/myLMSC261/Debugging\ Assignment/dulcimer.aiff")
env = HannTable()
pos = Phasor(freq=snd.getRate()*.25, mul=snd.getSize())
dur = Noise(mul=.001, add=.1)
g = Granulator(snd, env, [1, 1.001], pos, dur, 32, mul=.1).out()


9. Tested it out but it didn't work.
10. Maybe if I got rid of the space inbetween Debugging and Assigment?
  - **/Users/johnnyca15/Documents/GitHub/myLMSC261/DebuggingAssignment/dulcimer.aiff**

11. Tried that but then I got an error message saying "No such file or directory"
12. Reverted back to step 9. But now what if I take out the "" and see what happens?
  - My logic behind it is that I've only experienced the quotation if I want to print something out, and it doesn't seem like the function for this.
13. Didn't work, told me seomthing about unexpected character and invalid syntax.
14. I'm checking the () and seeing if everything is grouped correctly
  - Also looking for any spelling errors as well
15. It all seems right
16. Maybe if I take a step back and remember what Rachel said about looking at the 4th line, and how I noticed it said lmsc261sp21. I'm gonna change the directory path to the class folder and see what happens.
17. Put the file into terminal and copied:
  - **/Users/johnnyca15/Documents/GitHub/lmsc261fa21/110Debugging/Assignment-Pyo/dulcimer.aiff**
18. Pasted it into the dulcimerplayer.py code, like:
  - from pyo import *
    s = Server().boot()
    s.start()
    snd = SndTable("/Users/johnnyca15/Documents/GitHub/lmsc261fa21/110Debugging/Assignment-Pyo/dulcimer.aiff")
    env = HannTable()
    pos = Phasor(freq=snd.getRate()*.25, mul=snd.getSize())
    dur = Noise(mul=.001, add=.1)
    g = Granulator(snd, env, [1, 1.001], pos, dur, 32, mul=.1).out()

19. I got it! It worked and I saved the file.
  - I just don't know why it didn't work for when I copied the same **dulcimer.aiff** into the assignment folder and why that didn't work when I put in the same directory.


##Challenges

I didn't have that many challenges, but I'm still a little confused of how come the copy of the **dulcimer.aiff** that I put into my DebuggingAssignment folder didn't work, whereas the **dulcimer.aiff** in the class folder worked. I was worried that I would've changed the class folder so that's why I made a copy of almost everything to see if it would work. 
