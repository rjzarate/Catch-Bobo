scoreboard players remove .winTimer game 1

#fireworks
	execute if score %20t universalTimer matches 0 as @a[tag=winner,gamemode=!spectator] at @s run summon firework_rocket ~ ~2 ~ {LifeTime:40,Tags:["winner"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;16755200]}]}}}}

#resets game
	execute unless score .winTimer game matches 1.. run function reset:game
