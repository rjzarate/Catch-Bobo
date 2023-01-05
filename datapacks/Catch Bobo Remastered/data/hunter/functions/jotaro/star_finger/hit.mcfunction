tag @s add hit

scoreboard players operation @s blindness = @s blindness
scoreboard players operation @s wither1 = @s wither1
scoreboard players operation .wither1 stats *= #20 constant
scoreboard players operation .hitsHeadBlindness stats *= #20 constant

execute if score @s wither1 < .wither1 stats run scoreboard players operation @s wither1 = .wither1 stats
execute as @a[tag=jotaro,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0

execute if entity @a[tag=timeStopper] run scoreboard players remove #damage temp 1
function general:apply/damage/directory

#distance is if they hit the head
execute unless entity @s[distance=..1.5] if score @s blindness < .hitsHeadBlindness stats run scoreboard players operation @s blindness = .hitsHeadBlindness stats
#execute if entity @s[distance=..1.5] run say feet