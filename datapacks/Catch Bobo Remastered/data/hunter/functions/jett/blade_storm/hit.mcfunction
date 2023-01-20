execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation .rangeDamage stats *= #3 constant
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] run scoreboard players remove @s bladeStormCD 1000
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] run scoreboard players remove @s tailwindCD 300
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run tag @s add hit


execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run tag @s add hit

execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit,type=!minecraft:player] run scoreboard players operation .rangeDamage stats /= #2 constant
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run tag @s add hit