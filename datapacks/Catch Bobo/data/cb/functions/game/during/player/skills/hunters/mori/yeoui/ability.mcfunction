scoreboard players remove @s yeoui 1

tag @s add shotYeoui
execute at @s run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 1.25
execute at @s anchored eyes run function cb:game/during/player/skills/hunters/mori/yeoui/raycast
tag @s remove shotYeoui