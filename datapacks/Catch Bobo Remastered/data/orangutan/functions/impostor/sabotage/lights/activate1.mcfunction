scoreboard players operation @s sabotageCD = .cooldown20t sabotageStats
scoreboard players operation @s sabotageCD += .duration20t sabotageStats
scoreboard players operation @s sabotageDuration = .duration20t sabotageStats

#poison all hunters
	execute as @a[team=Hunters,gamemode=!spectator] run scoreboard players operation @s poison2 = @s poison2
	execute as @a[team=Hunters,gamemode=!spectator] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats
	execute as @e[type=#general:hunters/no_players,team=Hunters] run scoreboard players operation @s poison2 = @s poison2
	execute as @e[type=#general:hunters/no_players,team=Hunters] if score @s poison2 < .duration20t sabotageStats run scoreboard players operation @s poison2 = .duration20t sabotageStats

#noise and visual
	execute as @a[team=Hunters,gamemode=!spectator] at @s run 
	execute as @e[type=#general:hunters/no_players,team=Hunters] at @s run 