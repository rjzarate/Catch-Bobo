scoreboard players operation @s sabotageCD = .cooldown20t sabotageStats
scoreboard players operation @s sabotageCD += .duration20t sabotageStats
scoreboard players operation @s sabotageDuration = .duration20t sabotageStats

#poison all hunters
	execute as @a[tag=hunter,gamemode=!spectator] run scoreboard players operation @s poison2 = @s poison2
	execute as @a[tag=hunter,gamemode=!spectator] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats
	execute as @e[type=#general:hunters/no_players,tag=hunter] run scoreboard players operation @s poison2 = @s poison2
	execute as @e[type=#general:hunters/no_players,tag=hunter] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats

#noise and visual
	execute as @a[tag=hunter,gamemode=!spectator] at @s run 
	execute as @e[type=#general:hunters/no_players,tag=hunter] at @s run 