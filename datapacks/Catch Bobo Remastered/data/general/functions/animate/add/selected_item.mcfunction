execute store result score #CustomModelData temp run data get entity @s SelectedItem.tag.CustomModelData 1
execute unless score #CustomModelData temp matches 1000000.. run scoreboard players add #CustomModelData temp 1000000
execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp
item modify entity @s weapon.mainhand kit:animate/storage