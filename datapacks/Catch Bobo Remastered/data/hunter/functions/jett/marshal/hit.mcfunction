#reduce damage by 1
execute if entity @s[tag=!hit] if score .rangeDamage stats matches 2.. run scoreboard players remove .rangeDamage stats 1

#head
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation .rangeDamage stats *= #2 constant
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 1
execute positioned ~ ~-1.7 ~ if entity @s[distance=..0.45,tag=!hit] run tag @s add hit

#body
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ~ ~-1.05 ~ if entity @s[distance=..0.5,tag=!hit] run tag @s add hit

#legs
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit,type=!minecraft:player] run scoreboard players operation .rangeDamage stats /= #2 constant
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run scoreboard players operation #damage temp += .rangeDamage stats
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run function general:apply/damage/directory
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] as @p[tag=jett,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ~ ~-0.45 ~ if entity @s[distance=..0.45,tag=!hit] run tag @s add hit

tag @s add hit