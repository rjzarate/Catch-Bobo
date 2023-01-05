scoreboard players add @s switchMode 1

execute if score @s switchMode matches 2.. run scoreboard players set @s switchMode 0

execute if score @s switchMode matches 0 run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 1.5
execute if score @s switchMode matches 1 run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0