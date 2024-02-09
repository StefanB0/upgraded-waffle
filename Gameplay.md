# Overview
The game is a 2D action-RPG. The basic movement setup is the same as in hollow knight or salt and sactuary. The character can move left or right. He can jump up or go down. The main focus of gameplay is to make it feel good to fight

# Movement

## Player options

The player will have a pretty good base movement. Not too slow. 

The player can jump but not high enough to jump over enemies.

The player can dash which lets him move quickly a short distance. The dash has a cooldown of around 1 second.

The dash is **not** invincible to most attacks. 

Dash works in the air (maybe a special ability or upgrade).

****No contact damage*** for most enemies but the player can't move through them. The player can dash to move through enemies

Basic platforms that you can jump up and down from.

Attacks will move the player forward a little (or a lot).

# Combat
The combat is mainly inspired by Bloodborne and Sekiro. The hero should move fast and be responsive. This means they will maintain control of their character when jumping or dashing in some capacity.

To have the attacks feel responsive the attacks will have short recovery times and you can cancel light attacks into dashes.

To compensate for missing animations, we will draw shields in front of characters when they block and slashes that start from thin air. 
![[enemy_block.png]]

Attacks will be telegraphed with VFX and tint changes.
![[enemy_attacking.png]]

## Player options

**Controls:** Light attack button, heavy attack button, dash, block.

Light attack has short range and low recovery and damage. Can be dash-cancelled

Heavy attack has bigger recovery and damage but cannot be dash-cancelled. Can be charged to increase damage, range and recovery time.

Attacks also have a direction. It can be neutral, high or low. The only difference is when the enemy is blocking. If the enemy is blocking low they block low and medium attacks, if they block high they block high and medium attacks.

Blocking makes the character take less damage. Blocking can be high or low (neutral block is high).

Blocking with timing is a parry. You take no damage when doing a parry. Parrying an attack can potentially stagger the enemy, disrupt their attack combo and let you attack them.

**Not all attacks** can be parried. Some attacks need to be parried, regular blocked, dashed away from or avoided at all costs. Part of the challenge will be knowing how to counter a specific attack.

---

The main means of attacking will be a 3 hit combo that can be cancelled into a dash at any time.
All parts of the combo have a direction. To perform the combo click light attack 3 times in a row.


If the character presses the heavy attack button instead of the light attack for the third strike they will perform a finished with longer recovery that can't be dash-cancelled.

## Stamina

Stamina is tricky cuz in most 2d games it kinda sucks (for example Salt and Sanctuary) and makes the gameplay slow.

V1: A stamina bar that refills very fast if the character is not attacking (like in bloodborne) but doesn't let them spam

V2: No stamina bar. (Sekiro didn't have a stamina bar)

V3: Stamina bar is used only for blocking, dashing and special attacks but normal attacks and jumping do not use it.

V4: No stamina, just a block gauge .

V5: Stamina only for dashing

## Stagger

The player and weaker enemies get staggered when they get hit. This makes them stop blocking and take consecutive attacks if they come close to each other. 

(needs testing) To prevent stun-locking the player against multiple fast enemies, they will get a little i-frame window if they stagger goes uninterrupted for too long (for example 2 seconds).

The stronger the enemy the harder they are to stagger.

## Stun

![[stunning.png]]

Players and enemies can get stunned when hit with big attacks. When stunned a character cannot move and it is possible to perform a critical attack on them. After a character is attacked they exit stun even if the attack was not a critical (this means the player is not 100% dead even if they get stunned)

Each character has a stun gauge. The stun gauge decreases when the character is not attacking or getting hit. It has a small delay before it starts decreasing. Small attacks fill this gauge very slowly while strong attacks do it faster.

Counter attacks fill the stun gauge the fastest. Hitting a counter attack also gives a much bigger delay before the stun gauge starts to decrease. Bosses and elites can realistically be stunned only using counter attacks.

## Counter attacks

Counter attacks are attacks that hit the enemies where they are vulnerable. If the enemy is blocking high, hitting low is a counter attack.

If you interrupt an enemy attack with your heavy attack, it is a counter.

If the enemy is in recovery after a strong attack, hitting them counts as a counter.

Parrying an attack usually lets you do a counter after it.

## Critical attacks

If the enemy is stunned the player can perform a critical attack against the enemy by doing a charged heavy attack in their face. If this critical attack deals lethal damage the attack is a finisher. Finishers recover HP for the player.

## Enemies

Except for the weakest trash mobs, enemies will block by default and do combo attacks that the player needs to counter. Every enemy should be a mini-puzzle, and if the player solves the puzzle they should be able to stun them without too much difficulty.

For example a skeleton might block both high **and** low by default. But after the player hits the (blocking) they will make a 3 hit combo with a long recovery at the end. The skeleton also takes high stun damage from parries so the player can parry all 3 attacks or charge a heavy attack at the end of the combo to **Stun** the skeleton and kill him easily. Spamming light attack in comparison will be less efficient.