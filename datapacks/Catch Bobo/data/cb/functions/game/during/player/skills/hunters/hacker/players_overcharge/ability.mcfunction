scoreboard players remove @s battery 37

execute at @s anchored eyes run particle minecraft:soul_fire_flame ^ ^ ^ 0.2 0.5 0.2 0 10
execute at @s run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 2

execute at @s as @a[team=Hunters,distance=26..] at @s anchored eyes run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 2
execute at @s as @a[team=Hunters,distance=26..] at @s run particle minecraft:composter ^ ^ ^ 0.2 0.5 0.2 0 10
execute at @s as @a[team=Hunters,distance=26..] run function cb:game/during/player/skills/hunters/hacker/players_overcharge/refresh