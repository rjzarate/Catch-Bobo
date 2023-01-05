data modify entity @s VisualFire set value 1b
scoreboard players operation @s speed2 = @s speed2
scoreboard players operation @s fireResistance = @s fireResistance
execute store result score #animatronicsFireResistance temp run data get storage minecraft:stats tag.animatronicsFireResistance 20
execute store result score #animatronicsSpeed2 temp run data get storage minecraft:stats tag.animatronicsSpeed2 20
execute if score @s speed2 < #animatronicsFireResistance temp run scoreboard players operation @s speed2 = #animatronicsFireResistance temp
execute if score @s fireResistance < #animatronicsSpeed2 temp run scoreboard players operation @s fireResistance = #animatronicsSpeed2 temp
execute at @s run playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.75 0.5