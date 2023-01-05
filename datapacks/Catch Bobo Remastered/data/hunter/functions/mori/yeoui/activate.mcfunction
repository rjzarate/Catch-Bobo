function general:get_stats

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation .successfulRangeHitDuration stats *= #20 constant
scoreboard players operation @s yeouiCD = .cooldown stats
scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range temp = .range stats
execute if score @s yongpyoDuration matches 1.. if score @s yongpyoPowerOrAcceleration matches 0 run scoreboard players add #range temp 4
scoreboard players operation #damage temp = .rangeDamage stats
function general:apply/damage/scoreboard

tag @s add shot
execute at @s run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 1.25
execute at @s anchored eyes run function hunter:mori/yeoui/raycast
tag @s remove shot
execute if entity @e[type=#general:everything,tag=hit] run scoreboard players operation @s yeouiDuration = .successfulRangeHitDuration stats
execute if entity @e[type=#general:everything,tag=hit] run attribute @s minecraft:generic.attack_speed modifier add 1-0-3-2-1 mori_yeoui_attack_speed 0.6 add
tag @e[type=#general:everything] remove hit