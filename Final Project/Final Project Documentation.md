#Final Project
##Documentation

###Installation
**Link**: https://sonic-pi.net/



Steps:
1. Downloaded for macOS (v3.3.1)
2. Opened it to install it
3. Dragged the little thingy to the Applications
4. Opened it
5. Oh that's it (I thought it was going to be a lot harder based on previous things that we've tried to install in the class)

###Experimentations

**Link**: https://sonic-pi.net/tutorial.html

I used the link above to test out how *Sonic-Pi* worked and followed along with the tutorial.

Things I've learned

1. sample : (name of sample here), rate: 1
  - changing the rate changes the pitch I believe

2. sleep : 0.5
  - I believe this changes the speed. But since it says sleep, this should technically be the length of the rest (duration of the sleep)
    - The higher the number, the longer the rest
    - The lower the number, the shorter the rest
      - Also, have to make sure to add a zero before the decimal

3. Added another sample

4. Using # tells the computer to ignore it
  - Adding and removing things in the mix

5. **Play # Function**
  - The number represents the notes on the piano
    - Example: *play 60* = play the 60th note
  - lower number = lower beep
  - higher number = higher beep

6. **Chords**
```
play 72
play 75
play 79
```

minor chord

```
play 72
sleep 1
play 75
sleep 1
play 79
```

broken Chords

7. **Traditional Notes**
  - Can play actual note names
    - (ex) *play :C3*

  - Using play and sleep function, I created an example of a familiar song, which I forgot the name of but I will most likely be using it for class.

  - *play :Cs3* = play C sharp 3
  - *play: Cb3* = play C flat 3


8. **Amp and Panning**

```
play 60, amp: 0.5
```

  - **amp:** changes amplitude
  - only modifies the call to play that it's associated with. It doesn't carry over to the other notes. It will just go back to default

```
play 60, pan: -1
sleep 1
play 60, pan: 1
sleep 1
play 60
```

  - **pan:** changes Panning
  - -1 = left
  - 1 = right
  - must be between -1 and 1

9. **Synths**

```
use_synth :saw
```

and

```
use_synth :prophet
```

  - **use_** function seems to select the type of sound
    - there are over 20 to choose from


10. **Duration With Envelopes**
  - Gives control over duration and amplitude of a sound

```
play 60, release: 2
```
  - **release:** by the duration of the beat
    - if BPM= 60, then **release: 1** = 1 second
    - if BPM= 60, then **release: 2** = 2 seconds

```
play 60, attack: 2
sleep 3
play 65, attack: 0.5
```

  - **attack:** To fade

```
play 60, attack: 0.3, sustain: 1, release: 1
```

  - **sustain:**

```
play 60, attack: 0.1, attack_level: 1, decay: 0.2, decay_level: 0.3,
  sustain: 1, sustain_level: 0.4, release: 0.5
```

  - Can add levels to attack, decay, and sustain

11. **ASDR Envelopes**

Summary

  - *attack* = time from 0 to amplitude of *attack_level*
  - *decay* = time to move amplitude from *attack_level* to *decay_level*
  - *sustain* = time to move amplitude from *decay_level* to *sustain_level*
  - *release* = time to move amplitude from *sustain_level* to 0


12. **Samples**

  - can also pan/amplify Samples

```
sample :ambi_lunar_land, amp: 0.5
sample :loop_amen, pan: -1
sleep 0.877
sample :loop_amen, pan: 1
```

  - to stretch/squash samples, use *rate* function.

```
sample :loop_amen, rate: 0.5
```

  - speed up = higher rate
  - slow down = lower rate
  - negative number = reverses

```
print sample_duration :loop_amen
```

  - To find a sample duration.

```
sample :loop_amen, attack: 0.75, release: 0.75
```

  - Can also put envelopes like attack, sustain, and release

```
sample :drum_cymbal_open
```
  - Normal cymbals


```
sample :drum_cymbal_open, attack: 0.01, sustain: 0, release: 0.1
```
  - Closed cymbals. Short release


```
sample :loop_amen, start: 0.5
```
  - To start at a specific point



```
sample :loop_amen, finish: 0.5
```
  - To end at a certain point



```
sample :loop_amen, start: 0.6, finish: 0.4
```
  - If you have a start that's after the finish, the sample will play backwards


13. **Using Your Own Samples**
  - Pass the path of the sample file

  ```
  sample "/Users/sam/Desktop/my-sound.wav"
  ```


  - can also pass standard parameters

  ```
  sample "/Users/sam/Desktop/my-sound.wav", rate: 0.5, amp: 0.3
  ```



14. **Indexing Sample Packs**
  - If a folder contains many samples (sample pack) you don't have to change the path file for each one.
    - use an index to go through each one.

```
sample "/path/to/my/samples/", 0
```

0 = Plays the first one. Changing the number will change which sample depending on the order of the file


  - Can also make a shortcut for it

```
samps = "/path/to/my/samples/"
sample samps, 0
```

  - Here is where I also found out about lpf (low pass filter) and hpf (high pass filter) and how they can be used.



15. **Randomization**
  - *rrand* = ranged
  - gives you a random value between two numbers
    - a min and a max
  - Not exactly random however, as it's more pseudo-random
    - Will give random-like notes in repeat
  - To get effects of random like notes: loop it

```
loop do
  play rrand(50, 95)
  sleep 0.5
end
```


16. **Functions for Randomization**

  - example 1 = Using it for sleep and rate
    - Gives it a random feel for notes and rhythm
```
loop do
  sample :perc_bell, rate: (rrand 0.125, 1.5)
  sleep rrand(0.2, 2)
end
```


  - example 2 = Using it for cutoff
    - same note, but different cut off. Messes with volume a lot but sounds really cool.

```
use_synth :tb303

loop do
  play 50, release: 0.1, cutoff: rrand(60, 120)
  sleep 0.125
end
```

  - example 3 = To have it play random notes still, but get rid of decimals and only whole notes (integers): rrand_i

```
loop do
  play rrand_i(50, 95)
  sleep 0.5
end
```


  - example 4 = *rand* will return a random float between 0 (inclusive) and the max you specify (exclusive).
    - default it will return a value between 0 and 1


17. **Programming Structure** (This is where it gets a little more advanced but it was still helpful)

  - **Repeating**: instead of having to write out the same code over and over again, you can loop it.

```
3.times do
  play 50
  sleep 0.5
  sample :elec_blup
  sleep 0.5
  play 62
  sleep 0.25
end
```

  - Will repeat 3 times. To change how long to repeat, change the number




  - to loop forever

```
  loop do
  sample :loop_amen
  sleep sample_duration :loop_amen
end
```


  - In order to loop multiple things and have them start/end at the same time, you have to use a *in_thread* block

```
  in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

loop do
  use_synth :fm
  play 40, release: 0.2
  sleep 0.5
end
```

  - however that only works for 2. If you want multiple, then there should be multiple *in_thread* blocks.

```
  in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

in_thread do
  loop do
    use_synth :fm
    play 40, release: 0.2
    sleep 0.5
  end
end

loop do
  use_synth :zawa
  play 52, release: 2.5, phase: 2, amp: 0.5
  sleep 2
end
```



18. **Nesting**:

```
  4.times do
  sample :drum_heavy_kick
  2.times do
    sample :elec_blip2, rate: 2
    sleep 0.25
  end
  sample :elec_snare
  4.times do
    sample :drum_tom_mid_soft
    sleep 0.125
  end
end
```


#Experimentations No. 2
Okay so at this point I was a little overwhelmed with the Sonic-Pi tutorial as it felt like I was reading the User Manual so this is where I went to a new tutorial for a step by step/code along song.

**Link**: https://mehackit.org/en/courses/music_programming_basics/

So this link provides a more learning experience and provides a step by step tutorial that has questions to answer afterwards to see if I fully understand it. I think this one is very useful and allows me to essentially follow along and apply it.

Most of the beginning stuff are things that I already know so I will be documenting parts that I added that are new.



Things I learned

1. For error messages, Sonic-Pi will play up to the error, then stop.
2. The bottom of the UI are like tabs for a web browser, where you can store your code.
3. I might have just forgotten, but for *sleep 1* the 1 represents for one beat. Not one second.
4. *use_bpm* changes the bpm.

```
loop do
  use_bpm 410
  play 50
  sleep 1
  play 53
  sleep 1
  play 57
  sleep 1
  play 60
  sleep 1
  play 62
  sleep 1
  play 60
  sleep 1
  play 57
  sleep 1
  play 53
  sleep 1
end
```

5. repeating commands= *iterations*
6. You can have repeats inside of a repeat.

```
2.times do
  4.times do
    play :C3
    sleep 0.5
  end
  play :Eb4
  sleep 1
  play :G3
  sleep 0.5
  play :Bb4
  sleep 1
end
```


7. With buffers, I saw that one buffer can be used to write the melody while the other is for writing the drum pattern. I should be organized like this and put it separately.
8. *live_loop* is like a loop.
  - have to give it a name as well as *do*

```
live_loop :beat do
```

9. How to fill
  - long sleep

```
use_bpm 120

live_loop :beat do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :fill do
  sleep 12
  8.times do
    sample :drum_snare_hard
    sleep 0.5
  end
end
```

10. to look at all of the available synths, use *use_synth*
11. If I get confused of a function, I can hover over a command and press *cmd+i* for information on it
12. Some good bass synths: *:fm, :subpulse, :tb303*
13. Instead of having to write a bunch of lines for a melody, I can use *play_patterned_timed* to group a melody or certain notes/chords.

```
play :c5
sleep 0.25
play :c5
sleep 0.25
play :a4
sleep 0.5
play :g4
sleep 1
play :c5
sleep 0.25
play :c5
sleep 0.25
play :a4
sleep 0.5
play :f4
sleep 1

play_pattern_timed [:c5, :c5, :a4, :g4, :c5, :c5, :a4, :f4], [0.25,0.25,0.5,1]
```
  - Now the reason why the rhythm block is short is because it will repeat itself until the notes are finished playing. Since it repeats, I can just write it once
    - If if wanted to spice things up a bit, I can change the sleep numbers around, and it will change the melody length.

14. If a code is really long, I can enter it into a new space, as long as there was a comma in the first line.

```
play_pattern_timed [:c5, :c5, :a4, :g4, :c5, :c5, :a4, :f4],
 [0.25,0.25,0.5,1],
 amp: 0.25
```


15. Instead of having to individually change all of the notes ASDR, you can use *use_synth_defaults*, and set the ASDR. All of the notes will have that effect.

```
use_synth :chiplead
use_synth_defaults release: 0.1
play_pattern_timed [:c4,:f4,:b4,:c4,:c5,:g4], [0.25,0.5]
sleep 0.5
play :c4
sleep 1
play :c4, release: 3
sleep 1
play :f3
sleep 1
```

  - you can still edit certain notes ASDR, since it only effects the ones without any specifications.


16. How to create a different section for live looping

```
use_synth :pulse
use_bpm 170
live_loop :melody do
  4.times do
    use_synth_defaults release: 0.1, cutoff: 100
    play_pattern_timed [:c4,:g4,:a4,:c5], [0.5,0.25]
    play :d5, release: 2.5
    sleep 2.5
  end
  4.times do
    use_synth_defaults release: 0.1, cutoff: 50
    play_pattern_timed [:c4,:g4,:a4,:c5], [0.5,0.25]
    play :d5, release: 2.5
    sleep 2.5
  end
end
```

17. I can use effects by using *with_fx*
  - have to remember to add in a *do/end* function for it
  - order also matters

```
with_fx :reverb, room: 1 do
  with_fx :bitcrusher do
    play 72, release: 0.5
  end
end
```

  - this shows that it'll be the bitcrusher, then the reverb



#Additional Notes
Now that I finished multiple tutorials, I felt like I was ready. However, I know that there were some things that were missing in the tutorials, such as chords. The links below provides a chart of ways to type in chords, as well as common chord progression, and chord types.

**link**: https://sonic-pi.mehackit.org/exercises/en/09-keys-chords-and-scales/01-piano.html (by Sonic-Pi, MeHackIt, which was by same people who provided the tutorials)

```
4.times do
  use_synth :dsaw
  play chord(:A4, :m)
  sleep 0.25
end
sleep 1
4.times do
  play chord(:g4, :M)
  sleep 0.25
end
sleep 1
4.times do
  play chord(:f4, :M7)
  sleep 0.25
end
sleep 1
4.times do
  play chord(:e4, '7')
  sleep 0.25
end
```


 - this also works like:

 ```
 play_chord chord(:e3, :minor)
 ```


##Song project
###Song Choice: Get Lucky by Pharell Williams, Daft Punk, and Nile Rodgers

I wanted to do something funky for my project, and I figured something like this would be fun to make a cover. Since the song is pretty long, I figured that I would only do the main chorus part. My idea is to start off with chords, then melody, then drums.

**Chords**
- After writing the code for chords, and saw how it worked, I noticed that there was a *chord_invert* function in sonic-pi, and so I went ahead to see how it worked. I wanted it to have a clean voice leading instead of basic root chords.

```
play chord(:C4, :M)
```

becomes

```
play (chord_invert (chord :C3, :M7), 3)
```
  - the 3 at the end represents the inversion. The chord intended was a Cmaj7/B

```
play chord(:A3, :m7)
sleep 2
play (chord_invert (chord :C3, :M7), 3)
sleep 2
play (chord_invert (chord :E3, :m7), 2)
sleep 2
play (chord_invert (chord :D3, '7'), 2)
sleep 2
```

  - Now this sounds like something a Berklee student made.


**Melody**
 - When I was counting and humming the part in my head, it took me awhile to realize that I had to count the parts I didn't hum (the rests). It felt like a lot of math was involved to make sure I got the rhythm right.
    - This is where I used the *rhythm_tree_light.png* picture in the folder to see what rhythms to use.

  - Copying and Pasting isn't very useful as the rhythm changes frequently.
    - What ended up happening was I had to change certain notes to an octave higher so I could single out certain notes to see which one was in the wrong rhythm.

  - I had to look at the chords to see their sleep function and understand how many notes are in each chord in order to do the math and make sure it adds up.

  - probably the hardest part of this assignment

**Drums**

  - Here I realized, instead of having to write in sample all the time, I just make *boom = sample :drum_heavy_kick* to make things a lot faster and simpler.
    - that didn't work nevermind

  - started off with a basic drum pattern and thought it sounded weird but turns out my melody was wrong again, and now that I have a drum pattern I can hear where it's supposed to line up
    - should have done this before the melody,
    - there were parts that were in the wrong rhythm but everything still lined up section wise, so I had to keep track of the amount of decimals that were remaining and put them in other places to still maintain the sections.

**Looping**
  - After I got all the parts right, I had to organize it and make sure each section is at the right length
  - I had to look at the big picture, but also see how each part of the code is repeating and how many times.


#Things I Struggled In

- I felt like I took a lot of notes and was overwhelmed with all of the possibilities. It was similar to learning a really intense DAW in a span of 2 weeks, and I didn't have a set idea of what song I wanted to work on at first
- Nesting and looping was definitely confusing at first as I wasn't sure where it ended and kept getting error messages.
  - example: repeats inside repeats
- It wasn't insanely difficult, but I found that it was somewhat tedious and that I couldn't just only copy and paste.
- Most of the forums and helps that I got online were helpful but some other ones weren't as helpful as their works were much more advanced. It felt like I was asking how to drive from Formula One Racers (wierd analogy).
- Similar to the first point, I didn't have a set song idea in mind, and just told myself that I was going to figure out a song once I took all of the notes and learn how it works. Because of that, I took information that wasn't really applicable to what I ended up with. I should have pseudocoded or at least thought out what I needed and how to do it. I'll have to learn from this project and make sure I am more prepared and organized on how to achieve what I wanted.
- *Cmd+s* does not mean save... took me awhile to realized it. Luckily *cmd+z* was still the same though.

#Things That Helped Me
- The *cmd+i* function definitely helped me understand how a lot of things worked. I really like how Sonic-Pi includes the functions and provides examples.
  - I was able to understand the chord inversions from the help tab, rather than having to insert each note individually
- Another thing that was useful and helped me save some time was the "auto-select" feature, where it can predict what I want to write and I can pick from a lot of the options
  - *sample :* would give me a list of all of the possible options and I can filter in and pick a certain one.
    - It made picking a sound a lot more obtainable and fast.
