execute as @p[gamemode=!spectator,distance=..1] run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if entity @s[type=minecraft:player] run scoreboard players operation @s healingInCombat = .duration healingInCombat

execute if entity @s[type=minecraft:wolf,tag=dog] run function hunter:officer/dog/hit_player