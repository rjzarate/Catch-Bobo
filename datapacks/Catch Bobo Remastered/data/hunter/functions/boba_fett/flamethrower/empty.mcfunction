playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 1.5

#fire rate
scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s flamethrowerFireRate = #fireRate stats