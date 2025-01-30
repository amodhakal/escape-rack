LIST artifacts = sword, BuggyBlade
LIST inventory = sword

-> Artifact1Choice

== Artifact1Choice ==
In the middle of the night, I am sneaking through the Skull and Jones. I overhear the mention of Buggy's Bloodstained Blade. 

The legendary blade of Buggy the lord, turned red from the sheer amount of blood it was soaked in. The blade has been described as being thirsty of blood, turning anyone into a ferocious killer. However, the blade requires the blood and the life of the wielder if the blade becomes too thirsty.

I can use this blade to kill Alex Jones, but I do risk being killed by the blade instead. <b>What should I do?</br>

* This blade is worthy of greatness like me, not some filth like Alex Jones.
-> Artifact1_0


* The blade will kill me before Jones, it is more of a curse than a blessing.
-> Artifact2Choice

== Artifact1_0 ==
I keep following the crew. As they keep speaking, they talk about how the vice captain has the blade in his quarters.
    
"Hey, who are you?" I hear. Oh no, they have found me! <b>What should I do?</br>

* Kill the enemy crew
<b><em>You valiantly try to kill the enemy crew. However, you were unsuccessful and were decapitated during the battle.</em></b>
-> END

* Escape
-> Artifact1_1

== Artifact1_1 ==
That was way too close. With my information, I slowly sneak in the vice captain's quarters. I found the blade!!! 

Immediately I hear "Someone has breached the vice captain's quarters, kill them!" from the enemy crew members. <b>What should I do?<b>

* Escape from the enemy crew
I quickly got outside and ran through the tight corridors with almost supernatural strength. However, before I could celebrate, my hands outside my control open the blade's steath, and the blade stabs my heart.
<b><em>The bloodstained blade was tired of your cowardiness and was too thirsty. It stained itself in your blood and fulfilled its thirst.</em></b>
-> END

* Kill the crew members
Why should I be scared of these peasants? With some supernatural power, I kill every single of the crew members in my path, and go into the abyss of these small corridors.

~ inventory += BuggyBlade
<b><em>Congrats! Buggy's Bloodstained Blade was added to your inventory.</em></b>
-> Artifact2Choice

== Artifact2Choice
As I sneak through the Skull and Jones, I stumble upon a small treasure room hidden in these small corrdiors. It has nothing, except an imposing Trident.

I immediately recognize this trident as the Triton's Tainted Trident. Legends say that it was a gift from the God Poseidon to his favorite son. The trident gives the bearer to turn into water making them effectively invincible. 

Trition with this invincibility became more arrogant and thought himself as greater than Poseidon. He committed the ultimate sin, invading Atlantis.

Poseidon becoming furious cursed the trident such that the bearer will die a very painful death if they contact ocean water. With this curse in effect, Trition screamed and eventually turned into ocean water.

As I get closer, I hear a whisper, "Bear me child, and you will invincible... on land". <b>What should I do?</b>

* Leave the trident behind
I'm a pirate, a beast bred for the sea. Such a beast can never flourish if he dies from thriving in it.
-> Artifact3Choice
-> Artifact2_0

== Artifact2_0 ==
<b><em>Congrats! Triton's Tainted Trident was added to your inventory.</em></b>

The power is too great. I can finally kill that filth Alex Jones and his crew. I feel the invincibility of the trident.

I AM INVINCIBLE!!!

Even if I am invincible, I should still hide my power so I don't get exposed to ocean water. <b>What should I do?<b>

* Keep it a secret from my crew.
I try to hide my powers, but the taste of it is too delicious. I managed to keep the trident a secret for a week but I can't keep it anymore.
-> Artifact2_1

* Show my power openly
-> Artifact2_1

== Artifact2_1 ==
I quickly gather my crew and show off the trident. There are many ways to show off my secret power. <b>What should I do?</b>

* Bring out my crew's awe
I talk about how I was a long descendant of Trition. During my exploration, I found my birthright, the Trident. With the invincibility, we are fully prepared to destroy the filthy crew of Alex Jones.

When I stop my speech, my crew quickly stands up and started cheering. Before I can cheer with my crew, I feel a sensation on my back. Suddenly, it becomes intorelable. It feels like every single part of my body is being split and I scream in pain.

<b><em>As you were focused on celebrate, one of your crew members got some ocean water and splashes your back with it, leading to your very painful death and dissolution into ocean water.</em></b>
-> END

* Bring out my crew's fear.
-> Artifact2_2

== Artifact2_2 ==
Fear is the greatest emotion a person can face. People tend to think twice about betraying someone they fear or want to betray.

I asked Sheldon to stab me on the shoulder. "Boss, you are sure?" He asks me. "Yes, DO IT!!! I will kill you if you don't!!!" I reply.

He does stab in the shoulder, but when the blade touches my shoulder, the blade enters my shoulder like inserting a blade into water. I am perfectly fine and well. 

Immediately, I stab Sheldon on his heart and kill him. Sheldon my friend, you were great but I need to bring out the fear in people.

My crew become wide eyed, "What did you do?", "How could you", "That was our brother", they started protesting.

Suddenly, I start hearing "Kill him", and the threat becomes louder and louder. <b>What should I do?</b>

* Do nothing
I have already killed my brother, I don't want to kill anyone else. Before I can protest, they quickly push me off the board. 

It feels like every single part of my body is being split and I scream in pain.


<b><em>You died a very painful death and dissolved into ocean water.</em></b>
-> END

* Kill my own crew
How dare they! I had accepted them as brothers and this is what they do. With great anger, I go through the entire crew with my trident and {inventory ? BuggyBlade:bloodstained blade|sword}.

Now, the Skull & Bones are next. I kill every human I face in my path to the captain Alex Jones's quarters. I stumble over the vice captain in the path and kill him. Before I can open the captain’s door, the ship splits in half and I fall into the ocean. It feels like every single part of my body is being split and I scream in pain.

<b><em>You died a very painful death and dissolved into ocean water.</em></b>
-> END


== Artifact3Choice ==
As I sneak through the Skull and Jones, I find a small room. With my experience, it seems like every room in this bastard's ship has a mythical treasure hidden inside. <b>Should I check out the room?</b>

* It's just another room, let it be
-> NextPlaceholder

* I feel like this room is something special, I'll check it out
-> Artifact3_0

== Artifact3_0 ==
As I enter the room, I found an old lady tied by rope to a rod. When we sees me, she loudly begs "Help me". She's being too loud! <b>What should I do?</b>

* Kill her
I stab her with my {inventory ? BuggyBlade:bloodstained blade|sword} in her heart, she's dead. I'm disappointed there was just an old lady there. Oh well.
-> NextPlaceholder

* Release her
-> Artifact3_1

VAR killed_priestess = false

== Artifact3_1 ==
"Thank you my savior", she says. 
"It's fine. Why were you stuck here?", I replies.
"I used to be the priestess of Selene, I was captured in a raid.", she replies.
"Why did they keep you alive?", I ask.
"I owned the scepter of Selene", she replies.

I become absolutely baffled from her statement. The sacred scepter of Selene is a legendary artifact is an extremely holy artifact. Romulus and Remus, the first kings of Rome were born from Selene. As such, the sacred scepter's owner can challenge the king for the right to the throne. With this artifact, I can rule the great empire!

"Where is it?" I ask. 
"It was taken by three dudes, their names were Jonny, Honny, Konny from what I heard", she replies.
"Thank you for letting me escape", she says before getting out of the room.

It might be better to kill her, it knows I'm here. However, she has provided me with the chance for the artifact, <b>what should I do?</b>

* Kill her
Before she can get away, I stab her with my {inventory ? BuggyBlade:bloodstained blade|sword} in her back. 
"Why lord!" she asks. "You know too much", I reply. She dies.

~ killed_priestess = true
-> Artifact3_2

* Let her be
She's done enough. I'll let her be.
-> Artifact3_2

== Artifact3_2 ==
<b>Who should I pick?</b>
* Jonny 
-> Artifact3_Jonny
* Honny 

{ killed_priestess:
	-> Artifact3_Honny
- else:
    -> Artifact3_Hunt
}
* Konny 
-> Artifact3_Konny

== Artifact3_Jonny ==
// No artifact, is strong. Can't kill physically, distract him.
-> Artifact3_2

== Artifact3_Honny ==
// Has artifact, is weak. Can kill him physically.
-> NextPlaceholder

== Artifact3_Konny ==
// No artifact, is strong. Can't kill him physically, wait till sleep.
-> Artifact3_2

== Artifact3_Hunt ==
//  Add an escape subplot where the user just ends up with death.
-> END


== NextPlaceholder ==
-> END