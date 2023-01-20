#gives battery to player
	execute as @p[tag=hunter,tag=hacker,gamemode=!spectator,predicate=general:uuid_search] unless score @s battery matches 2001.. run scoreboard players add @s battery 1
#check whether to remove grayscale on abilities
	execute as @p[tag=hunter,tag=hacker,gamemode=!spectator,predicate=general:uuid_search] run function hunter:hacker/grayscale/remove/check