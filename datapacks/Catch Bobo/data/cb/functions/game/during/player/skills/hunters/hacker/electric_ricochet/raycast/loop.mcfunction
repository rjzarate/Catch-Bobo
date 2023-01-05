scoreboard players remove @s eRicochetD 1

execute if score @s eRicochetB matches 9..10 run particle dust 0.400 0.400 0.400 1 ~ ~ ~ 0 0 0 1 0 force
execute if score @s eRicochetB matches 0..8 if entity @e[tag=!noDamage,distance=..3.5] run tellraw @a[team=Hunters,tag=shotERicochet] ["",{"text":"Someone was hit by your ","bold":true},{"text":"Electric Ricochet","bold":true,"color":"dark_red"},{"text":"!","bold":true}]
execute if score @s eRicochetB matches 0..8 if entity @e[tag=!noDamage,distance=..3.5] as @a[team=Hunters,tag=shotERicochet] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.75
execute if score @s eRicochetB matches 0..8 if entity @e[tag=!noDamage,distance=..3.5] run tag @a[team=Hunters,tag=shotERicochet] remove shotERicochet
execute if score @s eRicochetB matches 0..8 at @e[tag=!noDamage,distance=..3.5] run tp @e[tag=!noDamage,limit=1,sort=nearest] ~ ~ ~ facing entity @s eyes
execute if score @s eRicochetB matches 0..8 as @e[tag=!noDamage,distance=..3.5] run effect give @s minecraft:instant_damage 1 0
execute if score @s eRicochetB matches 0..8 run particle dust 0.000 1.000 0.900 1 ~ ~ ~ 1 1 1 1 5 force

execute if score @s eRicochetB matches 1.. unless block ^ ^ ^0.25 #cb:dashables run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/bounce

execute if score @s eRicochetD matches 1.. positioned ^ ^ ^0.25 if block ~ ~ ~ #cb:dashables run function cb:game/during/player/skills/hunters/hacker/electric_ricochet/raycast/loop