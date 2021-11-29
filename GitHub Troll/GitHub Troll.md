#GitHub Troll Assignment/Documentation
##Sonic-Pi Discussion Board
**Link:** https://github.com/sonic-pi-net/sonic-pi/discussions/2818
So for my project, I didn't per say find a project that people were working on, so the majority of it were Question and Answers, but I was still interested to see what information I got out of that, even though some of the information wouldn't exactly help me with my project. I would say that it helped me understand what I was working with better.

1.
  **Question (hunzai)**: I was wondering if there is a build or if I can build for iOS and Android tablets. It would be great to install on tablets for school children.

  **Answer (ethancrawford)**: Hi @hunzai, sorry for the delayed reply.

It is not currently possible to build Sonic Pi for mobile/tablet platforms. It would be great to have such a thing available, but there are several quite difficult challenges that would need to be addressed. For example, Apple does not allow integrating a programming language into iOS apps.

It may be possible to create a hybrid web-app that is loaded on the tablet/mobile.
(This would also require much research into how or whether certain parts of the app can be converted into web languages such as WASM etc).
It's definitely a great idea that we'd love to see happen - it's just a challenge given our current resources and priorities!


What I found interesting was how Apple doesn't allow intergrating pramming languages into their applications. I think this was a topic that we talked about in class once, with how Apple wants to have their iOS apps "monopolized". But based on the user "ethancrawford", the loophole/workaround would be creating it by a web-application. I'm guessing that it would be similar to a website that is formatted for mobile use.

**Additional Link**: https://in-thread.sonic-pi.net/

So here is where there were actual discussions by users as the above was mainly technical information. I came across the link above as it was described where it was more user based, where other people create discussions. Unfortunately, it's not GitHub, but it is exactly the right discussions that I looked at.

2. (https://in-thread.sonic-pi.net/t/reggaeton-dembow-rhythm-with-sonic-pi/985)

In this discussion, it was an idea for a reggaeton, the user *victormartin* showed his first approach for a reggaeton rhythm.
In the response, a core developer *robin.newman* posted a suggestion to use a true/false statement on the first beat.
Another user with (*Martin*) suggested a different approach, with using line wraps and make it a more visual thing. It looks like those beat patterns that you can use in DAWs such as Logic and Fruity Loops. Instead of it looking like blocks where you click on it to activate it, it seems like binary where it's 0's and 1's. However after giving it a second look, I think the approach is more of a volume thing, and that the other numbers like .5 or .25 just shows the volume, and that's why 0's means rests. Lastly, *mrbombmusic* posted his approach, by using bools. Looking a little closer to his approach, it seems like it used a **if/else** statement for each part (snare/bass/kick/hi-hats), which acts more of the DAW functions of setting it at certain points, and actually using 1's and 0's.


###Overall

How most of the users commented and communicated through the discussion forums seemed very helpful and interesting. I didn't know that core developers would also respond as well, which gives it a more helpful and close community between the users and developers. I have confidence that if I needed help, I can post it and someone from the developers and the community for guidance. It was very helpful to see how many people had a different approach and had an example to show. Some others also posted a link of their SoundCloud to show their results and how they coded it as well which I think would be a useful outline to see how exactly they did certain parts.
