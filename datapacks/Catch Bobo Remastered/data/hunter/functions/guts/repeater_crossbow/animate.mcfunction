scoreboard players set @s leftArmModel 1100
execute store result storage animate CustomModelData int 1 run scoreboard players get @s leftArmModel
item modify entity @s weapon.offhand kit:animate/storage