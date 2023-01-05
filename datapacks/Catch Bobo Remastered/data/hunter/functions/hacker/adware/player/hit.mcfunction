scoreboard players set #inventory temp 36
execute store result score #inventoryRemove temp if data entity @s Inventory[]
execute if data entity @s Inventory[{Slot:100b}] run scoreboard players remove #inventoryRemove temp 1
execute if data entity @s Inventory[{Slot:101b}] run scoreboard players remove #inventoryRemove temp 1
execute if data entity @s Inventory[{Slot:102b}] run scoreboard players remove #inventoryRemove temp 1
execute if data entity @s Inventory[{Slot:103b}] run scoreboard players remove #inventoryRemove temp 1
execute if data entity @s Inventory[{Slot:-106b}] run scoreboard players remove #inventoryRemove temp 1

scoreboard players operation #inventory temp -= #inventoryRemove temp


scoreboard players set in math 1
scoreboard players operation in1 math = #inventory temp
function math:rng/range

scoreboard players reset @s adwareDropped
execute if score #inventory temp matches 1.. run tag @s add adwared
execute if score #inventory temp matches 1.. run scoreboard players operation @s adwareLink = @p[team=Hunters,tag=hacker,gamemode=!spectator,tag=shot] uuid
execute if score #inventory temp matches 1.. run function hunter:hacker/adware/player/give