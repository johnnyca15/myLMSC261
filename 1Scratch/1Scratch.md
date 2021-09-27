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

-**ideas**
  - Mario Style Game
    - controlled sprite using WASD
    - certain sprites or objects will trigger certain events
      - NPC Sprite 1: The objective (Egg)
      - NPC Sprite 2: The obstacle (Bear)
      - multiple levels


- **Game 1**
  - Used Avery sprite, since there were two Sprites (one standing still, the other walking), I merged them together so I would only have to worry about the costume change rather than having to switch between two Sprites
    - duplicated a costume, took out the original costume, and pasted the costume from the other sprite
  - Added an egg as the objective to get to
  - **Left and Right Controls and costumes**
    - To move left and right, Avery should be switching costumes every steps. Running into issue where is only changes to one costume. Need a way to switch.
      - Set up a timer of .5 seconds to switch to next costume.
      - Had to use two controls for each key. One to change costumes, the other for movement.
    - couldn't find a *"release button"* so had to put Avery standing still costume after.
    - realized that I'll have to flip the costumes for when Avery is walking the other direction. Made multiple copies of costumes to flip them and changed commands for the other direction
    - Updated how
  - **Jumping**
    - Probably the hardest part, could only work with what I could since I couldn't find a way to jump while moving forward
    - Used the glide y axis to imitate jumping motion
  - **Variables**
    - 3 Variables
      1. Name
      2. Lives Remaining
        - Starts with 3
        - Anytime Avery touches the bear, a live is taken away
          - Change variable by -1
        - Once it reaches 0, then **GAME OVER** will appear
      3. Levels
        - Once Avery touches the Egg, Level will change by 1
        - Avery's position will change to original starting point
        - Egg will also crack
