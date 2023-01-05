execute positioned ^ ^ ^1 run particle minecraft:crit ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^1 positioned ~ ~-1.4 ~ as @e[distance=..0.8,tag=!noDamage] as @p[tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.75
execute positioned ^ ^ ^1 positioned ~ ~-1.4 ~ as @e[distance=..0.8,tag=!noDamage,tag=!gotShot] run function cb:game/during/player/skills/hunters/jett/marshal/damage/head
execute positioned ^ ^ ^1 positioned ~ ~-1.4 ~ as @e[distance=..0.8,tag=!noDamage,tag=!gotShot] run tag @s add gotShot

execute positioned ^ ^ ^1 positioned ~ ~-.4 ~ as @e[distance=..0.8,tag=!noDamage,tag=!shot] as @p[tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.25 0
execute positioned ^ ^ ^1 positioned ~ ~-.4 ~ as @e[distance=..0.8,tag=!noDamage,tag=!shot,tag=!gotShot] run function cb:game/during/player/skills/hunters/jett/marshal/damage/body
execute positioned ^ ^ ^1 positioned ~ ~-.4 ~ as @e[distance=..0.8,tag=!noDamage,tag=!shot,tag=!gotShot] run tag @s add gotShot

execute positioned ^ ^ ^1 unless block ~ ~ ~ #cb:wallbangables run function cb:game/during/player/skills/hunters/jett/marshal/finished
execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:wallbangables run function cb:game/during/player/skills/hunters/jett/marshal/raycast