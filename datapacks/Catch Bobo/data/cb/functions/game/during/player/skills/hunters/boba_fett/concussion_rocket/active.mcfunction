tp @s ^ ^ ^1
scoreboard players add @s tempTime 1
particle minecraft:large_smoke ~ ~1 ~ 0 0 0 0 1 force
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotConcussionRocket,tag=!concussionRocket] run effect give @e[distance=..6] blindness 6 0
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotConcussionRocket,tag=!concussionRocket] run effect give @e[distance=..6] slowness 5 3
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotConcussionRocket,tag=!concussionRocket] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.5 1
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotConcussionRocket,tag=!concussionRocket] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if entity @e[tag=!noDamage,dy=1.5,tag=!shotConcussionRocket,tag=!concussionRocket] run kill @s

execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run effect give @e[distance=..6] blindness 6 0
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run effect give @e[distance=..6] slowness 5 3
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2.5 1
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute positioned ~ ~0.5 ~ unless block ~ ~ ~ #cb:dashables run kill @s
execute if score @s tempTime matches 2400.. run kill @s