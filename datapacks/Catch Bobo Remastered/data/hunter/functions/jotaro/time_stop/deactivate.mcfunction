attribute @s minecraft:generic.attack_damage modifier remove 1-0-0-0-5
scoreboard players reset @s timeStopChargeUp

execute at @s run playsound minecraft:entity.warden.attack_impact player @a ~ ~ ~ 4 1
advancement revoke @s only hunter:jotaro/damage_taken