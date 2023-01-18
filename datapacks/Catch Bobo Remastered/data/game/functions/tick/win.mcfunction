scoreboard players remove .winTimer game 1

#fireworks
	execute if score %20t universalTimer matches 0 as @a[team=Orangutans,tag=winner,gamemode=!spectator] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:40,Tags:["winner"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200]}]}}}}
	execute if score %20t universalTimer matches 0 as @a[team=Hunters,tag=winner,gamemode=!spectator] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:40,Tags:["winner"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;11141120]}]}}}}

#resets game
	execute unless score .winTimer game matches 1.. run function reset:game

#bossbar
	execute store result bossbar minecraft:timer value run scoreboard players get .winTimer game