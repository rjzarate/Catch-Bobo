attribute @s minecraft:generic.attack_damage base set 3
execute at @s run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 1 0
execute at @s run particle minecraft:angry_villager ~ ~0.5 ~ 0.2 0.5 0.2 1 5
tellraw @s ["",{"text":"You feel your sins crawling up your back.","italic":true,"color":"gray"},{"text":"\n"},{"text":" +2 melee damage","italic":true,"color":"dark_red"}]
scoreboard players set @s lastPlayer 1