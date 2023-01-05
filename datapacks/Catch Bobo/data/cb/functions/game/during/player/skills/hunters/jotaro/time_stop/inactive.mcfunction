effect give @s minecraft:instant_damage 1 0
effect give @s minecraft:blindness 6 0
effect give @s minecraft:weakness 5 0
attribute @s minecraft:generic.attack_damage base set 1
playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 2 0
execute at @s run kill @e[type=armor_stand,tag=timeStop]