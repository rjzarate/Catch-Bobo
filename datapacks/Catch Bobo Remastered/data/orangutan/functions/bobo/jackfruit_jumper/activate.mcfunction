function general:get_stats

scoreboard players add @s jackfruitJumper 1
execute if score @s jackfruitJumper matches 2.. run scoreboard players reset @s jackfruitJumper

scoreboard players operation @s jackfruitJumperCD = .cooldown stats
scoreboard players operation @s jackfruitJumperCD *= #20 constant

execute if score @s jackfruitJumper matches 1 at @s run playsound minecraft:block.piston.extend player @s ~ ~ ~ 1 2
execute if score @s jackfruitJumper matches 1 at @s run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-1 bobo_jackfruit_jumper_attack_damage -2 add
execute if score @s jackfruitJumper matches 1 at @s run attribute @s minecraft:generic.movement_speed modifier add 0-0-0-0-2 bobo_jackfruit_jumper_movement_speed -0.010000000149011612 add

execute unless score @s jackfruitJumper matches 1 at @s run playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2
execute unless score @s jackfruitJumper matches 1 at @s run effect clear @s minecraft:jump_boost
execute unless score @s jackfruitJumper matches 1 at @s run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-1
execute unless score @s jackfruitJumper matches 1 at @s run attribute @s minecraft:generic.movement_speed modifier remove 0-0-0-0-2

#change model
	execute store result score #CustomModelData temp run data get entity @s SelectedItem.tag.CustomModelData 1
	execute if score @s jackfruitJumper matches 1 run scoreboard players remove #CustomModelData temp 10
	execute unless score @s jackfruitJumper matches 1 run scoreboard players add #CustomModelData temp 10
	execute store result storage animate CustomModelData int 1 run scoreboard players get #CustomModelData temp
	item modify entity @s weapon.mainhand kit:animate/storage