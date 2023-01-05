scoreboard players remove @s starFinger 1


tag @s add shotStarFinger
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 1.5
execute at @s anchored eyes run function cb:game/during/player/skills/hunters/jotaro/star_finger/raycast
tag @s remove shotStarFinger