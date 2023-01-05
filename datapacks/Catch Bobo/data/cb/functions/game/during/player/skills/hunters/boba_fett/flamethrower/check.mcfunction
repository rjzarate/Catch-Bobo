execute if score @s flamethrower1 matches 10.. if score @s flamethrower matches 1.. at @s anchored eyes run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/raycast
execute if score @s flamethrower1 matches 10 if score @s flamethrower matches 1.. at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.5
execute unless score @s flamethrower matches 1.. if score @s flamethrower1 matches 10.. at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 2
execute if score @s flamethrower1 matches 10.. if score @s flamethrower matches 1.. run scoreboard players remove @s flamethrower 1

execute if score @s flamethrower3 matches 2.. if score @s flamethrower1 > @s flamethrower2 run scoreboard players add @s flamethrower2 1
execute if score @s flamethrower3 matches 2.. if score @s flamethrower1 <= @s flamethrower2 run scoreboard players set @s flamethrower1 0
execute if score @s flamethrower3 matches 2.. if score @s flamethrower1 <= @s flamethrower2 run scoreboard players set @s flamethrower2 0
execute if score @s flamethrower3 matches 2.. if score @s flamethrower1 <= @s flamethrower2 run scoreboard players set @s flamethrower3 0

execute unless score @s flamethrower matches 1.. if score @s flamethrower1 matches 10.. run scoreboard players set @s flamethrower1 0
execute unless score @s flamethrower matches 1.. if score @s flamethrower1 matches 10.. run scoreboard players set @s flamethrower2 0
execute unless score @s flamethrower matches 1.. if score @s flamethrower1 matches 10.. run scoreboard players set @s flamethrower3 0