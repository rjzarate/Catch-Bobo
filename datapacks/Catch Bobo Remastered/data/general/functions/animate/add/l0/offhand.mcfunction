execute if score #slot temp matches -106 store result score #CustomModelData temp run data get storage minecraft:inventory Inventory[{Slot:-106b}].tag.CustomModelData 1
execute if score #CustomModelData temp matches 1..999999 run scoreboard players set #wasReady temp 1
execute if score #CustomModelData temp matches 1000000.. run scoreboard players set #wasReady temp 0

execute if score #wasReady temp matches 1 run scoreboard players add #CustomModelData temp 1000000
execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp
execute if score #slot temp matches -106 run item modify entity @s weapon.offhand kit:animate/storage
