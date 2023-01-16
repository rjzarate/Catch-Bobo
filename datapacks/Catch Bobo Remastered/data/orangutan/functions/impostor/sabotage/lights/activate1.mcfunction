scoreboard players operation @s sabotageCD = .cooldown20t sabotageStats
scoreboard players operation @s sabotageCD += .chargeUp20t sabotageStats
scoreboard players operation @s sabotageDuration = .chargeUp20t sabotageStats

#noise and visual
	execute as @a[team=Hunters,gamemode=!spectator] at @s run 
	execute as @e[type=#general:hunters/no_players,team=Hunters] at @s run 