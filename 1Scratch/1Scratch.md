# Scratch Project Notes and Documentation

- **Requirements**
  - 2 sprites (no cats, Rachels orders)
  - 3 scripts or threads total
    - *threads*: multitask
  - 1 condition or loop
    - *condition*: sends you down different paths
    - *loop*: cycles
  - 1 variable
    *variable*: grasps and store values
  - 1 sound

- **ideas**
  - Mario Style Game
    - controlled sprite using WASD
    - certain sprites or objects will trigger certain events
      - NPC Sprite 1: The objective (Egg)
      - NPC Sprite 2: The obstacle (Bear)
      - 2 levels


- **Starting Off**
  - Used Avery sprite, since there were two Avery Sprites (one standing still, the other walking), I merged them together so I would only have to worry about the costume change rather than having to show/hide between two Sprites
    - duplicated a costume, took out the original costume, and pasted the costume from the other sprite
  - Added an egg as the objective to get to


- **Movements**
  - **Left and Right Controls and Costumes**
    - Used Avery sprite, since there were two Avery Sprites (one standing still, the other walking), I merged them together so I would only have to worry about the costume change rather than having to show/hide between two Sprites
    - duplicated a costume, took out the original costume, and pasted the costume from the other sprite
    - To move left and right, Avery should be switching costumes every steps.
      - Set up a timer of .2 seconds to switch to next costume.
      - Had to use two commands for the same keys. One to change costumes, the other for movement.
    - couldn't find a *"release button/command"* so had to put Avery standing still costume after.
    - realized that I'll have to flip the costumes for when Avery is walking the other direction. Made multiple copies of costumes to flip them and changed commands for the other direction
    - Originally started with "move 6 steps" but had to change it to 11 steps in order to make it fair against the bear
  - **Jumping**
    - Used the glide y axis to imitate jumping motion
    - Added a jumping sound effect
    - Made sure it was high enough to jump over the bear


  - **Variables**
    - 3 Variables
      1. *Name*
        - Used as a greeting and a Congratulation when you win
          - Used code "What's your name?"
      2. *Lives Remaining*
        - Starts with 3
        - Anytime Avery touches the bear, a live is taken away
          - Change variable by -1
        - Once it reaches 0, then **GAME OVER** will appear    
      3. *Levels*
        - Once Avery touches the Egg, Level will change by 1
        - Avery's position will change to original starting point
        - Egg will also crack
        - Once it reaches Level 3, **YOU WIN** will appear

  - **NPC (Non-Playable Characters)**
    - *The Bear*
      - Had the bear hidden away in Level 1
      - During Level 2, Bear shows up and spawns on the right side
      - Made the bear go left until it hit the edge
      - Once it hit the edge, I gave it a second wait until it spawned back at the original position
      - Since this bear's function is to "damage" Avery (The Player), whenever the bear touched Avery, it would take a life.
        - Afterwards it would broadcast the start of level 2 and start over again
    - *The Egg*
      - The objective of the game
      - Doesn't have much coding or command as the Egg doesn't move around
        - Costume changes and change in position

  - **Messages/Signals**
    - **Green Flag**
      - The start of the Game is used to put all the right sprites in the right locations and hiding the other sprites
      - used to set the Lives and Levels variables to the right amount
      - Used to set the right backdrop
    - **Avery**
      - Has the most Messages and Signals used
      - *A* and *D* are used to change her costume and to move left/right
      - *W* is used to jump
      - Once Avery touches the Egg, another signal is created to transition to Level 2
    - **Bear**
      - For the start of the game, signaled the bear to be hidden
      - Once Level 2 starts, I still kept the bear hidden until after Avery's talk of using W is done
        - Used to give the player time to read
      - "Level 2 Bear Appearance" is when the Bear is shown and spawns
    - **Egg**
      - For start of the game, made sure it was in position with the right costume
      - Signaled the Egg for a speaking part to tell the player the objective
      - Once Avery touches the Egg, Avery signals the Egg to change costumes
      - For the final Level, Egg changes costume one last time
    - **GAME OVER/YOU WIN**
      - Kept hidden in beginning
      - Once Lives reaches 0, or Level reaches 3, signaled it to appear

  - **Conditions**
      Probably one of the hardest parts to understand and test out. I came to realize that once you add in more variables, it creates more complex opportunities for conditions. Had to update multiple previous threads
      - Example 1: When the game is over, you can't move
        - *Conditions* created: If lives=0 or level=3, you can't move
      - Example 2: Whenever the Bear touches Avery
        - To prevent cheating




  - **Problems**
        - Running into issue where is only changes to one costume.
        - For the longest time, how I moved the bear from right to left was the gliding function. Because of that, I couldn't figure out why the condition where if the bear runs into Avery, it would stop and take a life away. After a couple of stressful hours, I realized that gliding wasn't the correct way to move the sprite, and that actually using "Move *x* steps" was the right way.

        - Once I figured that out, the next problem was how to restart level 2 once the bear touches Avery. I lost control of the Bear as it kept running around
          - After careful reading and trying to think like a computer, my solution was:
            - If the bear wasn't touching Avery, then start from right, and run left until bear hits the edge, and wait for a second
            - Repeats until the bear runs into Avery
            - Once it touches Avery, a life is taken away and I broadcast to start level 2 again

        - Tried to figure out a way how to make Avery move as smoothly as the bear, but couldn't figure it out.
          - If I put loop Avery's movements, she runs forever and I lose control of her
          - As a result I just made her move more steps so she has a chance against the Bear.

      - For a while, I didn't know a way on how to make the bear stop running around once Avery reached the Egg. I looked for "if (Avery) touches (Egg)" but couldn't and thought it was going to be impossible.
        - That's when I realized that you can broadcast a message, and that's how you can change a sprites action or command based off of two other different sprites relationship.

      - Lastly, YOU WIN gets "stuck" from when you win and starting the game over again. This one I have tried multiple ways to fix but can't. Once I start the game over again, it disappears. I think that When Green Flag is Pressed, Hide Sprite is the most direct command you can give, I'm not sure exactly how to fix it.

  - **Sources**
    - The only source that I used was a tutorial from Scratch. I used the Pong Game Tutorial to understand how the ball and the player interacted and which command/code was used to make contact.
      - How to find it:
        1. Top bar of Scratch, where it says tutorial
        2. Pong GAME
        3. 4th Slide
