execute if predicate general:is_sneaking run scoreboard players set #CustomModelData temp 16
execute unless predicate general:is_sneaking run scoreboard players set #CustomModelData temp 6
execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp
item modify entity @s weapon.mainhand kit:animate/storage