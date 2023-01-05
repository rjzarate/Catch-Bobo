scoreboard players remove @s kill 1

execute at @s run tp @s @p[team=Hunters,gamemode=!spectator,tag=!stun,tag=!invincible]
execute at @s run playsound minecraft:entity.turtle.egg_crack player @a ~ ~ ~ 1 0.75

execute at @s as @p[team=Hunters,gamemode=!spectator,tag=!stun,tag=!invincible] run tag @s add stun