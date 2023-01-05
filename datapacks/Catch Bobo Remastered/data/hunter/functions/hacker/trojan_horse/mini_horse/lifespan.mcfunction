scoreboard players add @s trojanMiniHorse 1


execute if score @s trojanMiniHorse matches 60.. at @s run playsound minecraft:entity.horse.jump neutral @a ~ ~ ~ 0.5 2
execute if score @s trojanMiniHorse matches 60.. run data modify entity @s Silent set value 1b
execute if score @s trojanMiniHorse matches 60.. run kill @s