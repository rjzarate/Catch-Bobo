execute positioned ^ ^ ^1 run particle witch ~ ~ ~ 0.1 0.1 0.1 0 5 force

execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotStarFinger,dy=1.5] as @a[tag=shotStarFinger] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotStarFinger,dy=1.5] run effect give @s minecraft:wither 5 0
execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotStarFinger,dy=1.5] run effect give @s minecraft:blindness 5 0
execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotStarFinger,dy=1.5] run function cb:game/during/player/skills/hunters/jotaro/star_finger/damage

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if entity @a[tag=!noDamage,tag=shotStarFinger,distance=..10] unless entity @e[tag=!noDamage,tag=!shotStarFinger,dy=1.5] run function cb:game/during/player/skills/hunters/jotaro/star_finger/raycast