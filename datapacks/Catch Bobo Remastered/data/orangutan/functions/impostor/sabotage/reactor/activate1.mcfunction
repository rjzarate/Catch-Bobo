scoreboard players operation @s sabotageCD = .cooldown20t sabotageStats

#gives bobo a fruit
	scoreboard players add .fruitsCollected game 1
	tellraw @a[team=Orangutans] ["",{"text":"REACTOR MELTDOWN\n","bold":true,"italic":false,"color":"red"},{"text":"+1 Fruit","bold":false,"italic":true,"color":"white"}]
	execute at @s as @a[team=Orangutans,tag=bobo] run playsound

#noise and visual
	execute as @a[team=Hunters,gamemode=!spectator] at @s run 