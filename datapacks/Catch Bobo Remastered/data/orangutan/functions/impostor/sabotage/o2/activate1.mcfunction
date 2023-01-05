scoreboard players operation @s sabotageCD = .cooldown20t sabotageStats
scoreboard players operation @s sabotageCD += .duration20t sabotageStats
scoreboard players operation @s sabotageDuration = .duration20t sabotageStats

#poison all hunters
	execute as @a[team=Hunters,gamemode=!spectator] run scoreboard players operation @s poison2 = @s poison2
	execute as @a[team=Hunters,gamemode=!spectator] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats
	execute as @e[type=#general:hunters/no_players,team=Hunters] run scoreboard players operation @s poison2 = @s poison2
	execute as @e[type=#general:hunters/no_players,team=Hunters] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats

#kill ocelot(s)
	kill @e[type=minecraft:ocelot,predicate=general:uuid_link_search,tag=sabotage,tag=o2]

#noise and visual
	execute at @a[team=Hunters,gamemode=!spectator] run 
	execute at @e[type=#general:hunters/no_players,team=Hunters] run 