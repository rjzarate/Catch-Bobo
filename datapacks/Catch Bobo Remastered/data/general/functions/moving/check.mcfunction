scoreboard players reset @s moving
scoreboard players set @s[scores={crouch=1..}] moving 1
scoreboard players set @s[scores={climb=1..}] moving 1
scoreboard players set @s[scores={fall=1..}] moving 1
scoreboard players set @s[scores={sprint=1..}] moving 1
scoreboard players set @s[scores={swim=1..}] moving 1
scoreboard players set @s[scores={walk=1..}] moving 1
scoreboard players set @s[scores={water1=1..}] moving 1
scoreboard players set @s[scores={water2=1..}] moving 1

#falling check
execute store result score #falling moving run data get entity @s Motion[1] 100000
execute unless score #falling moving matches -7841 run scoreboard players set @s moving 1


scoreboard players reset @s crouch
scoreboard players reset @s climb
scoreboard players reset @s fall
scoreboard players reset @s sprint
scoreboard players reset @s swim
scoreboard players reset @s walk
scoreboard players reset @s water1
scoreboard players reset @s water2