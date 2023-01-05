scoreboard players operation @s recallCD = .cooldown20t recallStats

execute at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 1.5
tp @s @p[tag=bobo,gamemode=!spectator]
execute at @p[tag=bobo,gamemode=!spectator] run playsound minecraft:entity.enderman.teleport player @a[team=Orangutans] ~ ~ ~ 1 1.5
kill @e[type=minecraft:armor_stand,tag=recall]

scoreboard players reset @s recallChargeUp