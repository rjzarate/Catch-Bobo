item modify entity @s weapon.mainhand cb:pepsi_smash_inactive
attribute @s minecraft:generic.attack_damage base set 1

execute at @s run playsound minecraft:entity.puffer_fish.blow_out player @a ~ ~ ~ 1.5 0

scoreboard players reset @s pepsiSmashD