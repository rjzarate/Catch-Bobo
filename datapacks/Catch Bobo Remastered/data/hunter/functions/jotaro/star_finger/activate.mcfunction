function general:get_stats

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s starFingerCD = .cooldown stats
scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range temp = .range stats
scoreboard players operation #damage temp = .rangeDamage stats
function general:apply/damage/scoreboard

tag @s add shot
execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 1.5
execute at @s anchored eyes positioned ^ ^ ^1 run function hunter:jotaro/star_finger/raycast
tag @s remove shot
tag @e[type=#general:everything] remove hit