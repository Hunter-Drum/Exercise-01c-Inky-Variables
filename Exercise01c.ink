/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something
 
 Variable checking
 
 Equality == 1 == 1
 not equality 1 != 2
 greater >
 less <
 greater or equal >=
 less or equal <=
 
 Hi I couldn't figure out how to make it so the story would automatically end if the health hit zero. I was planning on doing more spots to loose health but I ended up focusing on the sheild and sword instead. Also I'm so sorry I can't spell to save my life, I'll use spell check on the project. 
*/



VAR health = 5
VAR petname = ""
VAR sheild = 1
VAR sword = 1
VAR torch = 0


-> memory

== memory ==
As you make your way up to the entrance of the cave you think over the dragon you will have to face inside. Perhaps it will be less scary if you give it a silly name? What will you name the dragon? 
* [Fire Snort] 
 ~ petname = "Fire Snort" 
-> cave_mouth
* [Lil guy]  
~petname = "Lil guy" 
-> cave_mouth
* [Fugly]  
~petname = "Fugly" 
-> cave_mouth

== cave_mouth ==
You are at the enterance to the cave.
{torch == 0: There is a torch on the floor.} 
{sword == 0: There is your sword on the floor.}
{sheild == 0: There is your sheild on the floor.}
The cave extends to the east and west. 
Now that you're here you're sure to defeat the dragon! {petname} won't know what hit em! If only you could find your way through the cave... 
You have {torch} torches.
You have {sword} sword.
You have {sheild} sheild.




+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
+ [Pick up the item] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
+ {torch > 0} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
+ {torch== 0} [Continue in the dark.] -> east_tunnel_dark

-> END

== west_tunnel ==
There is mud and grime coating the walls. Water drips down and your boots slush through shallow water.
{petname == "Fugly": This place is almost as ugly as the dragon you'll be fighting.}
{petname == "Lil guy": You can't beleive Lil guy lives like this. Must be rough to be a dragon.}
The tunnel gets narrower and narrower, the rocks are rough as you walk past them. 
*[Push past them.] 
~health = -1 
-> west_cont
*{sheild == 1} [Use sheild to brace against the rocks as you shimmy through.] -> west_cont

-> END

==west_cont ==
You contine down the tunnel and make it to an opening. There is warmth emmenating from inside. You know you have reached the dragon. Are you ready?
* Yes -> fight
* No
Seriously? Fine I'll wait. 
...
..
No that's enough. Go fight. -> fight
-> END

=== torch_pickup ===
You only have two hands. What are you leaving there? 
+ [Leave torch]
~ torch= 0
~ sheild = 1
~ sword = 1
-> cave_mouth
+ [Leave sword] 
~ sword= sword -1
~ sheild = 1
~ torch = 1
-> cave_mouth
+ [Leave sheild]
~ sheild= sheild -1
~ sword = 1
~ torch = 1
 -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room. My my how tempting this is. You wouldn't need any weapons to just take this and go.
* You've hardly begun your adventure! No you are seeing this through! -> east_cont
* Who cares about some dragon?? I want THIS. 
You are able to grab the most valuable items. With the ability to pick and choose what you take you carry enough value out of that cave that you will never have to work again. You're set for life!
-> END

== east_tunnel_dark ==
You aren't scared of the dark. Surely you'll be fine. As you walk confidently through the dark passage the ground beneath you slips and you fall hard forward onto a very hard and sharp pile of- something. You groan and sit up rubbing your injured side. Ow- maybe you should have grabed that tourch. 
~health= -1
You reach down and feel what you fell on. It- These are coins. You laugh realizing just how many were here. You don't even need to kill {petname}. You could take this and leave!
* No no, you have an obligation to the people to kill this awful dragon! Plus it will be totally cool. -> east_cont
* You've heard the stories. Why chance death? This is the biggest payout a job has ever had.
You gather as much of the coins as you can fit on your person and head right back the way you came. Only a few bruises and a lot of gold. 


-> END

== east_cont ==
You contine down a reletively straight pathway {torch == 0: With far more caution than before, feeling your way around. | The torch lights the way though it's not a difficult path.}
In front of you there is a warm glow and a heat you wouldn't expect from deep within a cave. You know you've arived. You've come this far. Are you ready for a fight? 
* [Yes] ->fight 

* [No.]
Okay well that's your own fault for coming here to fight a dragon. I was asking to be nice. Go fight the dragon. ->fight
-> END

== fight ==
You run into a room where the walls are on fire, the heat in near unbearable here. In the center {petname} rests unbothered by you. 
+ {sheild == 1} [Hit its head with the sheild] -> Sheild
+ {sword== 1} [Stab it's neck with the sword] -> Sword
+ Circle around it, observing. -> observe
 

-> END


== observe ==
You walk around the beast amazed by its scales, its bright colors. The way it shines in the fire light. It shifts and slowly raises its head, opening its striking green eyes. It looks at you, calm. Slowly it raises a claw up to you. Not in an attack, almost as if pointing. An odd feeling of understanding washes over you. As if {petname} sees right into your soul and suddenly calling them {petname} felt very wrong.
You do not slay the dragon. You turn and leave. 
-> END

== Sheild ==
You hit it on the head with your sheild. It wakes up with a roar. It's bright green eyes fall on you. It opens its mouth and rears back. A golden inferno flies towards you. You raise your sheild against the fire but it's not enough. You are consumed in the flames.

-> END 

== Sword ==
You plunge your sword into the dragon's neck. It jolts away, sputtering and gurgling its own blood before it falls with a mighty thud. Shame. You thought you fight would be more epic. 

-> END




