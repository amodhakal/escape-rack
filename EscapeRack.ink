// Escape Rack Sparrow Script for Ink Game Engine

VAR hasCrewLoyal = false // This will change to true depending on decisions, this variable will determine if you survive in certain endings.

-> start

=== start ===
// Introduction to the story
After many eventful years of ruling the Seven Seas, building up a pirate crew, pillaging and plundering for treasure, the dreaded pirate Alex Jones and his crew have sought to threaten your dominance over the ocean. Using underhanded tactics and brute force, Captain Jones has reduced your once feared fleet to just one ship: your flagship, the Wolf’s Wrath. After a narrow escape from the endless barrage of cannon fire from the enemy fleet, you have found your ship in grave danger. The Skull and Jones, a respected ship among Jones’ crew, has ambushed you, seeking to finally end your reign over the sea once and for all. 

The Skull and Jones’ sails loom on the horizon, their black flag bearing the mark of Alex Jones—a fearsome skull with crossed swords behind it. Cannonballs thunder through the air, tearing into the Wolf’s Wrath and splintering its sturdy hull. Smoke and fire fill the air as chaos reigns on deck.

You grip the ship’s wheel tightly, scanning the carnage around you. Despite the chaos, you can see your loyal crew rushing to their stations, ready to follow your lead. The Wolf’s Wrath may be battered, but it’s not beaten yet.




// Ahoy there! Me name be Cap’n Rack Sparrow, cap’n of this mighty fine ship, the Wolf’s Wrath! 

I’ll introduce me crew to ya. First off is me first mate, Ribbs! Then we have me lookout, Eagle Eye; me navigator, Clark; me cook, Gordon; me gunners, Murphy and Sheldon; and me cabin boy, Jimmy. Together, we be the glorious crew of the Wolf’s Wrath, and the greatest pirates there be on the seven seas! // (This dialogue will be used later in an organic way, not at the beginning)

But we’ve got no time for long introductions, because—

* [What’s happening, Cap’n?]
    -> under_attack
* [Keep explaining the crew.]
    I could go on about the crew all day, but we’ve got trouble!
    -> under_attack

=== under_attack ===
// Scene: Under attack!
The Wolf’s Wrath is under attack!

“Eagle Eye! Who’s attacking us?” I yelled.

“It’s the Skull and Jones! We’re being attacked by the Skull and Jones!”

The Skull and Jones. That be the ship of me archenemy, Alex Jones.

I decide to…
* [...strike_back!]
-> strike_back
* [...abandon ship!]
	-> abandon_ship

===abandon_ship===
“Men, take the dinghies! Abandon ship as fast as ye can!”

My men did what they were told. As we lowered the dinghies, I was doing a head count to make sure all crew members were accounted for. Our crew split into two boats. Me first mate, Ribbs, headed a boat with Clark, Gordon and Murphy. I headed the other boat and took Eagle Eye, Sheldon and Jimmy.

We were safely on the boats. Unfortunately, our old ship, the Wolf’s Wrath, wasn’t so lucky. We watched as it slowly but surely sank to the bottom of the sea.

“Cap’n! All our food and resources were on that ship!” cried Jimmy.

He was right. We escaped the Wolf’s Wrath with nothing but our lives.

What should I do?
* [Pursue the Skull and Jones!]
	->pursue_enemy
* [Do nothing and hope we wash ashore soon.]
	-- What?! We can’t do that! There’s only one thing we can do…
	->pursue_enemy

=== strike_back ===
“The Wolf’s Wrath shall not sink today! Man the cannons!”

I steer the ship as my men rush to the remaining cannons not destroyed by the Skull and Jones’ endless barrage. The roar of cannon fire echoes across the waves as my crew fights valiantly to fend off the attack.

The Skull and Jones is relentless, its captain intent on destroying us at all costs. As the Wolf’s Wrath creaks and groans under the assault, I face a critical decision:

* [Focus fire on their cannons and disable them!]
    -> disable_cannons
* [Try to ram their ship and board them!]
    -> ram_ship
 
===  disable_cannons ===
“Focus fire on those blasted cannons ya wenches!” 

“Aye aye, cap’n!”

My crew fires its cannons at the enemy cannons, attempting to disable them, but the onslaught of cannonfire proves unstoppable, as our poor ship was already damaged. As I walk over to observe the damage done to the ship, a cannonball tears through my flesh, removing any hope I had that I could ever return to my former glory. 

“AAAAARRRGGGGGGHHHHH!” I scream, coughing out blood.

-> END

=== ram_ship ===
I steer the ship, despite its heavy damage, towards the Skull and Jones, and despite cannonfire tearing through the hull, we manage to ram it.

“Board this darn ship!” I yell.

* [Wait for my crew to board the ship] -> CrewFirstBoard
* [Lead by example and board the enemy ship first] -> YouFirstBoard

=== YouFirstBoard ===
As debris flies, disorienting members of both my crew and theirs, I take the first step in boarding the enemy ship. I hope my crew follows my example… 

They quickly understood and did as I did. I lead them to the cabins below, and we hide behind a bunch of barrels outside them.

-> Artifact1Choice

=== CrewFirstBoard===

As debris flies, disorienting members of both my crew and theirs, I quickly command my crew to board the ship first. They hesitate, but they do as they’re told. I follow.

“Hey! Throw them in the brig!”

Oops. I guess James saw us. I suppose this journey is over before it even begins…

-> END

===pursue_enemy===
“Men! After that ship! Quickly now!”

“But Cap’n! What if someone sees us?” asked Eagle Eye.

“Would you rather do nothing and just hope to wash ashore?” I replied.

“No, sir…”

We rowed our small boats frantically toward the monstrous ship in the distance. Oh, Jones…ye have sunk yer last ship!

We gradually approached the enemy ship. Our dinghies were like ants compared to the Skull and Jones, so we had a good chance of approaching without being noticed.

But that also brings up another question: how can we board the ship?
	* [Grab hold of the anchor!]
		-- I grabbed the anchor.
		-- It was a bad idea.
		-- I found myself frantically dangling from the ship by the anchor. I was eventually able to climb up to the deck, however. But now I had another issue: how will I get my crew up here?
		->find_passage
	* [Break in through a cabin window!]
		--Jimmy asked if we should go through the windows. But Sheldon reminded him we were unarmed, and simply pounding on the windows would blow our cover.
		--We should try something else.
		->END
	* [Climb the ropes to the main deck!]
		-- We decided to climb the ropes to the main deck.
		-- But we certainly couldn’t all board at once. Jones’s crew would notice!
		-- So I decided I would scout the ship first and find a way to let the rest of the crew on.
		->find_passage

===find_passage===
I decided the simplest way to let the crew in was through the windows. I decided to head below deck to where the cabins were.

I hadn’t been seen yet. I had to grab a cabin without anyone noticing. And I had to do it fast.

What should I do?
	*[Knock and run!]
		--I knocked on the door to the nearest cabin. Then I ran. Loudly.
		--The pirate ran out, in a rage. “Who on earth was that?! I bet it was the cabin boy!”
		--He searched high and low, but my hiding spot behind the barrel of fruit worked like a charm.
		--“Maybe he ran on deck!” He then went up to the deck to check it out.
		--With the cabin unoccupied, I seized my chance.
		-> open_window
	*[Make a loud noise to lure someone out.]
		--I knocked over a barrel of rum. The contents poured all over the deck.
		--“Aarrgh! What was that noise?!”
		--I hid behind a barrel of fruit. I saw a pirate come out of the nearest cabin and say, “Aarrgh, not the rum! The cap’n’s going to be upset!”
		--He searched all the nearby barrels, but none contained rum. He also checked the one I was hiding behind, but he didn’t spot me.
		--He took the barrel and went up to deck, presumably to look for some other rum on the ship. I seized my chance and ran into the cabin.
		-> open_window

===open_window===
I opened the window. It was locked, but my skills in piracy afforded me the ability to open even the toughest of locks.

I stuck my head out the window and waved to the crew. They looked tired but rowed quickly to where I was nonetheless.

“Quickly now,” I said in a quiet voice.

One by one, they climbed into the cabin through the window. I quickly locked the window behind them. We ran out of the cabin and hid behind the barrels outside.

-> Artifact1Choice
		

LIST artifacts = sword, BuggyBlade, SacredSceptre
LIST inventory = sword

== Artifact1Choice ==
In the middle of the night, I am sneaking through the Skull and Jones to gather some loot. I have already gathered some gold. I overhear the mention of Buggy's Bloodstained Blade. 

The legendary blade of Buggy the lord, turned red from the sheer amount of blood it was soaked in. The blade has been described as being thirsty of blood, turning anyone into a ferocious killer. However, the blade requires the blood and the life of the wielder if the blade becomes too thirsty.

I can use this blade to kill Alex Jones, but I do risk being killed by the blade instead. <b>What should I do?</br>

* This blade is worthy of greatness like me, not someone like Alex Jones.
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
I quickly got outside and ran through the tight corridors with almost supernatural strength. However, before I could celebrate, my hands open the blade's steath, and the blade stabs my heart.
<b><em>The bloodstained blade was tired of your cowardness and was too thirsty. It stained itself in your blood and fulfilled its thirst.</em></b>
-> END

* Kill the crew members
Why should I be scared? With some supernatural power, I kill every single one of the crew members in my path, and go into the abyss of these small corridors.

~ inventory += BuggyBlade
<b><em>Congrats! Buggy's Bloodstained Blade was added to your inventory.</em></b>
-> Artifact2Choice

== Artifact2Choice
As I sneak through the Skull and Jones gathering more loot, I stumble upon a small treasure room hidden in these small corridors. It has nothing, except an imposing Trident.

I immediately recognize this trident as the Triton's Tainted Trident. Legends say that it was a gift from the God Poseidon to his favorite son. The trident gives the bearer to turn into water making them effectively invincible. 

Triton with this invincibility became more arrogant and thought himself as greater than Poseidon. He committed the ultimate sin, invading Atlantis.

Poseidon becoming furious cursed the trident such that the bearer would die a very painful death if they contacted ocean water. With this curse in effect, Triton screamed and eventually turned into ocean water.

As I get closer, I hear a whisper, "Bear me child, and you will be invincible... on land". <b>What should I do?</b>

* Leave the trident behind
I'm a pirate, a beast bred for the sea. Such a beast can never flourish if he dies from thriving in it.
-> Artifact3Choice

* Take the trident
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
I talk about how I was a long descendant of Triton. During my exploration, I found my birthright, the Trident. With invincibility, we are fully prepared to destroy the filthy crew of Alex Jones.

When I stopped my speech, my crew quickly stood up and started cheering. Before I can cheer with my crew, I feel a sensation on my back. Suddenly, it becomes intolerable. It feels like every single part of my body is being split and I scream in pain.

<b><em>As you were focused on celebrate, one of your crew members got some ocean water and splashes your back with it, leading to your very painful death and dissolution into ocean water.</em></b>
-> END

* Bring out my crew's fear.
-> Artifact2_2

== Artifact2_2 ==
Fear is the greatest emotion a person can face. People tend to think twice about betraying someone they fear or want to betray.

I asked Sheldon to stab me on the shoulder. "Boss, you are sure?" He asked me. "Yes, DO IT!!! I will kill you if you don't!!!" I replied.

He does stab in the shoulder, but when the blade touches my shoulder, the blade enters my shoulder like inserting a blade into water. I am perfectly fine and well. 

Immediately, I stab Sheldon in his heart and kill him. Sheldon my friend, you were great but I need to bring out the fear in people.

My crew became wide eyed, "What did you do?", "How could you", "That was our brother", and they started protesting.

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
As I sneak through the Skull and Jones to gather more loot, I find a small room. With my experience, it seems like every room in this bastard's ship has a mythical treasure hidden inside. <b>Should I check out the room?</b>

* It's just another room, let it be
-> NextPlaceholder

* I feel like this room is something special, I'll check it out
-> Artifact3_0

== Artifact3_0 ==
As I entered the room, I found an old lady tied by rope to a rod. When we sees me, she loudly begs "Help me". She's being too loud! <b>What should I do?</b>

* Kill her
I stab her with my {inventory ? BuggyBlade:bloodstained blade|sword} in her heart, she's dead. I'm disappointed there was just an old lady there. Oh well.
-> NextPlaceholder

* Release her
-> Artifact3_1

VAR killed_priestess = false

== Artifact3_1 ==
"Thank you my savior", she says. 
"It's fine. Why were you stuck here?", I replied.
"I used to be the priestess of Selene, I was captured in a raid.", she replies.
"Why did they keep you alive?", I ask.
"I owned the scepter of Selene", she replies.

I was absolutely baffled by her statement. The sacred scepter of Selene is a legendary artifact and an extremely holy artifact. Romulus and Remus, the first kings of Rome were born from Selene. As such, the sacred scepter's owner can challenge the king for the right to the throne. With this artifact, I can rule the great empire!

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

== Artifact3_Jonny ==
In the middle of the night, I got to his quarters. Once I'm there, I take my {inventory ? BuggyBlade:bloodstained blade|sword} and decapitate him.

After looking around, I can't find the sceptre.
-> Artifact3_2

== Artifact3_Honny ==
<b>Should I gather more information about him</b>

* Yes
I gathered some information about Honny. Apparently, he is pretty weak so I should be able to kill him.
-> Artifact3_Honny_1

* No
-> Artifact3_Honny_1

== Artifact3_Honny_1 == 
In the middle of the night, I got to his quarters. Once I'm there, I take my {inventory ? BuggyBlade:bloodstained blade|sword} and decapitate him.

After looking around, I found the sceptre. Hah, I can either be filthy rich or the king of Rome.

<b><em>Congrats! Selene's Sacred Sceptre was added to your inventory.</em></b>
~ inventory += SacredSceptre
-> NextPlaceholder

== Artifact3_Hunt ==
First, I cover myself with a mask to cover my face . They know who I am. With the confidence I won't be found, I go to ask the enemy crew. Before I can ask, they quickly draw out their swords and they decapitate me.

<em><b>You let the priestess out and she got captured again. With their interrogation, the enemy crew found out you were on the ship.</b></em>
-> END


== NextPlaceholder ==
With all of your treasures, what do you want to do?
* Take over the ship
-> commandeer_ship
* Escape
-> successful_escape

Chapter 3 Option 1: Escape
=== successful_escape ===
You have plundered plenty of treasure, and the weight of it all sits heavy in your arms. You wonder if it's time to cut your losses and escape before anyone notices.
The Skull and Jones is vast, but every moment you linger, the risk of getting caught grows.
* [Sneak to a lifeboat and row away quietly.]
-> lifeboat_escape
* [Bribe a crew member to let you off unnoticed.]
-> bribe_escape
* [Greed takes hold—stay and loot even more.]
-> greedy_choice
=== lifeboat_escape ===
You move swiftly through the dimly lit corridors, avoiding the loudest parts of the ship. Near the stern, you spot a lifeboat hanging over the water. Carefully, you begin untying the ropes.
Just as you lower yourself into the boat, a shadow looms over you. A deckhand stares at you, eyes narrowing.
* [Jump into the boat]
-> boat_escape

=== boat_escape ===
You don’t hesitate. With a deep breath, you leap into the lifeboat, gripping the ropes as the boat swings wildly over the water. The deckhand yells and lunges for you, but he’s too late.
You fumble with the last knot, desperately untying it as shouts erupt from above. A musket shot rings out, splintering the wood beside you.
Finally, the rope gives way, and the lifeboat drops into the water with a loud splash. The Skull and Jones looms overhead, crew members scrambling to the edge.
* {hasCrewLoyal} -> crew_rescue
* {!hasCrewLoyal} -> frantic_row

=== crew_rescue ===
You hear a battle cry  as your loyal crew, hidden among the enemy ranks, turns against them. 
"FOR THE CAP'N!" Ribbs shouts, tackling a musketeer before he can fire.
With the enemy distracted, you see your two real options for escape:
[Row as fast as possible before they recover.]
-> row_escape

=== row_escape ===
You grip the oars and row frantically, ignoring the pain in your arms as gunfire cracks behind you. The bullets miss, splashing into the sea, but the enemy crew is too distracted fighting your loyal men to pursue.
As the battle fades behind you, the weight of the stolen gold in your pockets reassures you—you've made it out alive, and rich.


<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END

=== frantic_row ===
You grab the oars and row like your life depends on it. The enemy crew scrambles above, reloading their muskets. The first shots miss, but you can hear them cursing as they take better aim.
Then a cannon fires.
The water erupts beside you, sending your tiny boat rocking. Another shot, and the boat is gone. You feel the icy water swallow you whole as you sink into the sea’s abyss.
-> END 


=== bribe_escape ===
You approach a low-ranking crew member, jingling a handful of gold coins.
"'Ey, mate," you whisper, "fancy earning a little extra?"
The sailor eyes the gold but hesitates.
* [Offer 10% of your loot]
-> safe_bribe
* [Threaten them instead.]
-> threaten_escape

=== threaten_escape ===
You quickly pull out a dagger.
“Help me escape or I’ll gut you like a fish.” You whisper.
The crew member flinches, then pulls out a sword. Before you can react, he knocks the dagger out of your hand.
“Die, scum!” 
You feel your consciousness fading as the blade pierces your heart.
-> END

=== safe_bribe ===
You toss the crew member a heavy pouch of gold. His eyes gleam as he pockets the money.
"Aye, I never saw ya," he mutters, jerking his head toward a small supply dinghy. "Take that one, and row quick."
You nod, climb aboard, and row into the night. The Skull and Jones fades into the mist as you escape with your treasure.


<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END



=== greedy_choice ===
You smirk. You’ve come this far, why stop now? There are still more riches to claim.
You sneak into what appears to be the captain’s quarters. A large, gilded chest sits before you. As you pry it open, you hear voices approaching.
* [Grab what you can and bolt.]
-> rushed_escape
*[Hide and wait for an opportunity.]
-> hide_escape

=== rushed_escape ===
You shove handfuls of gold into your satchel, ignoring the increasing noise outside. Your heart pounds as you sprint toward the deck, but just as you reach the exit—
"STOP HIM!"
A group of crew members spots you. The chase is on!
* [Run for the lifeboats and dive in!]
-> lifeboat_dive
* [Fight your way through!]
-> fight_escape

=== hide_escape ===
You slip behind a large bookshelf just as the door creaks open. Two enemy pirates enter, talking in hushed voices.
"Ye hear about the storm comin'?"
"Aye, but we best not leave till morning."
They shuffle around, oblivious to your presence. Once they leave, you exhale and slip out the door unnoticed. As you walk outside, you take notice of the cargo hold. However, also in front of you is the armory, mostly unguarded due to the earlier unrest. 
* [Escape through the cargo hold.]
-> cargo_escape
* [Sneak into the armory]
-> armory_loot

=== armory_loot ===
You creep toward the armory, slipping past an unaware guard. Inside, racks of knives, pistols, muskets, and ammo decorate the walls.
You quickly grab a pistol and a musket, and as much ammo as you can carry. 
As you're about to leave, you spot a stack of keys hanging on the wall. If you grab them, you might be able to unlock something important later.
[Take the keys.]
-> key_loot
[Ignore the keys and leave before someone finds you.]
-> cargo_escape_weapon

=== key_loot ===
You snatch the keys, hoping they unlock something valuable. Just as you turn to leave, a voice calls out behind you.
"Oi! What are you doin’ in here?"
A pirate stands in the doorway, reaching for his sword. You have only seconds to act.
[Shoot him]
-> quick_shoot
[Knock him out with the musket]
-> musket_knockout

=== quick_shoot ===
You quickly draw the pistol from your belt and fire.
The gunshot echoes through the ship, and the pirate crumples to the floor. Unfortunately, the shot was so loud that it attracted multiple enemy pirates armed with muskets. 
“Shoot this landlubber!” 
Before you can react, a bullet pierces your skull, instantly killing you.
-> END

=== musket_knockout ===
You swing the musket like a club, cracking it against the pirate’s skull, likely causing him permanent brain damage. 
You drag his body behind some crates before slipping out the door. With the keys in hand and the armory looted, you're in a much better position for escape.
-> cargo_escape_weaponkey


=== cargo_escape ===
You quietly rush into the cargo hold, which smells of rum and gold. You observe two pirates trying to get access to the rum, and a door with a lock on it. 

* [Attack the pirates] -> CargoAttackNoWeapon
* [Approach the door and try to unlock it unnoticed] -> LockedDoorFail

=== CargoAttackNoWeapon === 
You approach the pirates, a small dagger in hand. 
* [Quickly stab both of them] -> NoWeaponFail
* [Help them access the rum] -> NoWeaponSuccess

=== NoWeaponFail ===
You lunge forward, stabbing one of the pirates in the back of the neck, but before you can stab the other, he turns around with a pistol and knocks the dagger out of your hand.
“Not your lucky day, boy.” 
Your life is cut short as a bullet moves through your gut.
-> END

=== NoWeaponSuccess ===
“Aye, lemme have some rum,” You say to avoid suspicion.
“Oi, me first,” one of the enemies responds.
The enemy starts chugging the rum.
“Drink more! Drink more!” You and the other enemy cheer.
The pirate drinks until he is completely drunk, much to the delight of his friend.
* [Attack] -> DrinkSuccess
* [Wait for the other pirate to start drinking] -> DrinkFail

=== DrinkSuccess ===
Taking advantage of the barely conscious, drunk pirate, you quickly stab his sober friend in the neck.  You almost feel bad as you stab the drunk pirate as he is barely conscious.
You notice a key on each of their bodies and you use them to unlock the door, which leads to a deck, which leads to a small but spacious boat outside.
“Freedom,” you whisper as you untie the boat with your loot, escaping from the Skull and Jones.

<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END
=== DrinkFail ===
“Wait a minute, who the hell are you?!” The sober pirate exclaims.
He looks at you up and down before his eyes widen. Before you can respond, he shoots you in the gut.
“I recognize you, Rack Sparrow.” 

-> END

=== LockedDoorFail ===
You approach the door, but realize you have no key. Then, you feel a sharp object touch your neck.
“Where the hell do you think you’re going?” 
The pirate pulls you back and slits your throat, ending your life.
-> END

=== cargo_escape_weapon === 
Pistol in hand, you quietly rush into the cargo hold, which smells of rum and gold. You observe multiple pirates trying to get access to the rum, and a door with a lock on it. 
* [Attack the pirates] -> CargoAttackWeapon
* [Approach the door and try to unlock it unnoticed] -> LockedDoorFail

=== CargoAttackWeapon ===
Wasting no time, you use your pistol to shoot the rival pirates. Noticing a key on each of their bodies, you use them to unlock the door, which leads to a deck, which leads to a small but spacious boat outside.
“Freedom,” you whisper as you untie the boat with your loot, escaping from the Skull and Jones.

<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END
===  cargo_escape_weaponkey ===
With both a pistol and a key by your side, you quietly rush into the cargo hold, which smells of rum and gold. You observe multiple pirates trying to get access to the rum, and a door with a lock on it. 
* [Attack the pirates] -> CargoAttackWeaponKey
* [Approach the door and try to unlock it unnoticed] -> LockedDoorEscape

=== CargoAttackWeaponKey === 
Wasting no time, you use your pistol to shoot the rival pirates. With a key already in hand, you quickly notice a pouch of gold on each of their bodies, and steal both of them. Then, you unlock the door, which leads to a deck, which leads to a small but spacious boat outside.
“Easy gold, easy escape” You whisper as you steal the boat and sail into the sunset.
TODO: Add the printing of the artifacts collected
-> END

=== LockedDoorEscape ===
You quickly unlock the door, avoiding the attention of the guards. The door leads to a deck, which leads to a small but spacious boat outside.
“All too easy.” you whisper as you untie the boat with your loot, escaping from the Skull and Jones.

<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END
=== lifeboat_dive ===
You leap off the side of the ship, crashing into the cold ocean. You swim toward a small lifeboat floating nearby, hoisting yourself aboard. The enemy crew shouts behind you, but the Skull and Jones is too slow to turn around.
You've done it! You row into the night, the weight of your gold ensuring your future as a rich and free pirate.

<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>
-> END 

=== fight_escape ===
You unsheathe your sword and swing wildly, knocking back two enemies. The battle is fierce, but you're outnumbered. Eventually, a blow to the head knocks you unconscious.
You wake up in chains, your treasure gone, your fate uncertain.
"To Davy Jones’ locker with you!" a voice sneers.
-> END
==commandeer_ship==
I have now accrued a lot of treasure. But is it enough? No…I need a new ship, and I must take revenge on that scoundrel Jones!
From what I’ve heard from the crewmates, Jones is not popular. I need to win favor with his crew. I must start a mutiny!
I walked over to one of the gunners. “Hey there!” I called.
“Huh? Haven’t seen you around here. Big crew, I suppose…or maybe my memory be getting worse…”
	* [Ah, I’m just a cabin cleaner…]
		-> cabin_cleaner
	* [I’m not actually from this crew…]
		-> rival_captain
===cabin_cleaner===
“Ah, I’m just a cabin cleaner. I imagine you wouldn’t have seen me very much. I’m just here to enjoy the ocean breeze, meself.”
“Ah,” he replied. “Nice weather today, eh?”
“Yeah. If only more of us stopped to enjoy it every once in a while. The cap’n seems rather high-strung lately…”
“Oh, ya think so?” he replied. “That first mate works us to the bone. It’s bad enough I’m hearing talk of a mutiny.”
“A mutiny?!” I feigned surprise. This is better than I could have hoped!
“Yeah. And to make matters worse, the cap’n’s never around. This ship practically belongs to First Mate James.”
Shiver me timbers! Jones isn’t even on the ship?! But I can’t let this guy know I’m surprised.
“Yeah…I’m stuck cleaning their cabins day in and day out. It ain’t pleasant, let me tell you! This is about the only sunshine I get all day!”
“You seem like a nice chap. Care to join the revolution?”
“A revolution?!” I was surprised by how easily I’d earned this man’s trust. “Wow. Where do we meet? What’s the plan?”
“We’re meeting in the closest cabin to the stairs. We’ll be taking action imminently.”
“I’ll be there! Thank you.”
I went below deck and joined the meeting. It was full of crew members demanding immediate action for mutiny.
“Down with James! Down with Jones! This is our ship! Let’s take it back!”
This is some serious anti-Jones sentiment here. Revealing my identity as Captain Sparrow now might secure my spot as head of the mutiny. It’s risky, but it’s not enough to simply participate in a mutiny. I need to be captain! I need a new ship!
Still, is it worth the risk?
	* [My name is Captain Sparrow. Down with Jones!]
		-> identity_for_mutiny
	* [...]
		-> say_nothing

===rival_captain===
I suppose the only way to get out of this one is to reveal my identity.
“Funny story…I’m actually Captain Sparrow, the rival captain.”
“WHAT?! You shouldn’t be here! Sound the alarm! Captain Sparrow has infiltrated the ship!”
I was immediately surrounded and detained. I suppose it wasn’t a good idea to say that to someone I’d just met. But I suppose it’s too late for regrets now…
->END
===say_nothing===
I said nothing. I joined the ranks of the mutineers. We fought hard, but the mutiny ultimately failed. Perhaps I should have spoken up. This mutiny needed a strong leader!
Not that it matters now. We’ll all be flogged, and my crew and I will probably be executed.
-> END
===identity_for_mutiny===
“My name is Captain Rack Sparrow. I am the captain of the ship that First Mate James destroyed. I want revenge against him and Jones as much as anyone here.”
The crew stood in stunned silence at the revelation. I continued.
“I need a ship. You need a leader. And James needs to go down. If our crews join forces, we will fight, we will win, we will find Jones and we will put him in his place. So what do ye say? Are ye with me?”
There was some silence. But the gunner who brought me here spoke up.
“I don’t know about you guys, but an enemy of Jones be a friend of mine. His crew has stuck with him throughout this dangerous mission. And we do need a leader. Perhaps his demand is fair?”
“But we don’t know this man!” another crew member responded. “What if he’s just as bad a leader as Jones and James?”
Then in came Ribbs, my own first mate. “You guys are causing quite a stir. Careful James doesn’t hear you…”
“And who are you?”
“My name be Ribbs, first mate of the Wolf’s Wrath. Cap’n Sparrow has earned the respect of our entire crew. You would do well to trust him.”
Well? What should I say now?
	* [I’m going up there and showing James what’s what!]
		-- “Well, I don’t know about you all, but I’m going up there to show James what’s what. You guys can come or not, but I’d certainly appreciate the help.”
		-> battle_begins
	* [You guys distract the loyalists. I’ll battle James meself!]
		-- “I’ll battle James myself, one on one! All I ask from all ye mateys is that ye distract his goons!”
		-> battle_begins
===battle_begins===
I walk out the door. I hear Ribbs follow, and after some hesitation, a few more sets of footsteps. I turn around, and I see the entire crew of the Skull and Jones has chosen to join me.
I walk up to the deck, and they all follow. While I attempt to sneak to the front of the ship, the crew yells, “Down with James!!!!!” This grabs the attention of the rest of the crew. Some join the fight, some rush to James’s side, and some stay where they are.
James doesn’t move. He simply stays in place. “Oh, you fools. Men, throw them in the brig and flog them all!”
My crew eagerly joins the fight. Sword clashes ensue. If I hurry, I might be able to get them out of this without any major injuries. A healthy crew is a useful one, after all!
How should I go about confronting James?
	* [Sneak up to him by stealth…]
		-- I choose the stealth route. It’s fairly easy, since everyone is so distracted. I find myself with the opportunity to spring a sneak attack.
		-- I seize the opportunity. But he notices me, and manages to escape with only a minor cut to his hand.
		-- He looks as if he’s just seen a ghost. But I struck first, and he decides to return the favor.
		-> final_battle
	* [“Hey, James! Fight me!”]
		-- “Hey, First Mate James! Remember me?”
		-- “Captain Sparrow?! But how? Your ship is at the bottom of the sea! I saw to it personally!”
		-- “And I have come to make sure you face justice for what you did. Prepare to pay with your life!”
		-> final_battle
===final_battle===
My sword clashes repeatedly with James’s. I’ve done this before, but this feels especially tense. I have to win. Not just for me…but for my crew, both new members and old!
Suddenly, I see an opening. What should I do?
	* [Strike him dead!]
		-- I strike James on the neck. I slit his throat, and he drops to the floor. He says to me one last ominous phrase:
		-- “You’ll never defeat Jones. Even with his entire crew by your side…you’ll never win. You’ll…always be…a second-rate…land…lubber…” Then James breathed his last.
		-- The crew initially stood, in silence. The fighting had stopped instantly. The crew seemed afraid, but soon celebrated. “James is dead! We’ve won!”
		-> epilogue
	* [Strike his hand!]
		-- I struck his hand. His sword flew out of it and into the sea. Unarmed, he sat down and put his hands up.
		-- “Men! Throw this scoundrel in the brig!”
		-- They did as I said, carrying James off. As he was dragged away, James said one last thing, ominous threatening…
		-- “You’ll never defeat Jones! Even with his entire crew by your side, you’ll never win! You’ll always be a second-rate landlubber…nothing more!”
		-- The crew cheered. “James is dead! We’ve won!”
		-- I believe my new crew has come to hold me in quite high regard. I imagine my decision not to kill James has resonated with the crew.
		-> epilogue

===epilogue===
	- “Men! Hoist the sails! We’re off to find Cap’n Alex Jones and complete our revenge!”
	- “Aye-aye, Cap’n!” uttered the crew, both old and new.
- I now have a ship once more and a crew that respects me. It’s time to finish this! Jones…I will find you. And I will teach you not to mess with Captain Rack Sparrow! AAAAARRRRGH!

<b>Congrats, you ended up with {inventory has BuggyBlade: Buggy's Bloodstained Blade} and {inventory has SacredSceptre: Selene's Sacred Sceptre}</b>

-> END



