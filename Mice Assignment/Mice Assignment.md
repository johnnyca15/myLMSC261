#Mice Assignment Documentation
Started this in class, just spent time before this setting up and trying to understand how to start the Assignment
  - **Goal:** to figure out a calculation that equals to 3, then afterwards say *Blind Mice* with spaces and new lines and stuff

  - Calculation part should be easy but I have no idea how to add the space and new lines
    - use todays lecture on figure out a nice little string I think.
  - Talked to Rachel about how to enter the spaces and lines and she said to refer to the Special characters
    - I have to experiment with the Special characters because when I put that in, it showed up like col1, tcol2, tcol3, ncol1, etc. I have to figure out how to actually replace it with *Blind Mice*
      - To actually do the assignment, I thought it was only through Atom, but I asked Rachel and she said that the workflow is to use IDLE to figure it out and use Atom for the final draft and then use terminal to test it out.


    - I figured out how to use the tab and new line function by just adding a \t or a \n to either start a new line or tab.
      - ex: print("hello\n\tthere\n\t\tGeneral\n\t\t\tKenobi")
    - Now I have to figure out how to create a calculation and use the answer
      - f-string math example
    - if I can only use one "print" function then I have to combine the calculation and tab and create new line for *blind mice* into one.
      - more parenthesis?
      - Added math to words
        - print(f"{10-7} turkey burger")
        - now to add new lines and indentations
         - print(f"{10-7}\n\tBlind\n\t\tMice")
      - oh wait that's too far apart
      - Going back to *Printing paramenters and f-string* since I remember there was an option for spacing.
      - print(f"{10-7}\n  Blind\n\tMice")
