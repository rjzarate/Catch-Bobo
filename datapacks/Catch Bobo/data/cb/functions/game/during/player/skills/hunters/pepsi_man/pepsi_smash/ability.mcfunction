scoreboard players remove @s pepsiSmash 1
scoreboard players reset @s pepsiSmashD

item modify entity @s weapon.mainhand cb:pepsi_smash_active
attribute @s minecraft:generic.attack_damage base set 3
execute at @s run particle minecraft:enchanted_hit ~ ~1 ~ 0.2 0.5 0.2 1 10
execute at @s run playsound minecraft:entity.puffer_fish.blow_up player @a ~ ~ ~ 1.5 0