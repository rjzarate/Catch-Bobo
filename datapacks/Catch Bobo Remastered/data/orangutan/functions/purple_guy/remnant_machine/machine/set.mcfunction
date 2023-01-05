execute store result entity @s AbsorptionAmount float 1 run data get storage minecraft:stats tag.remnantMachineHealth 
execute store result score @s remnantMachineLifespan run data get storage minecraft:stats tag.remnantMachineLifespan 20

scoreboard players operation @s uuidLink = .search uuidLink