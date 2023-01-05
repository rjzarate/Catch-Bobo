execute if score @s durianDecoyGlowing matches 1.. run scoreboard players remove @s durianDecoyGlowing 1
execute if score @s durianDecoyGlowing matches ..0 run data modify entity @s Glowing set value 0b
execute if score @s durianDecoyGlowing matches ..0 run scoreboard players reset @s durianDecoyGlowing

execute if score @s durianDecoyDuration matches 1.. run scoreboard players remove @s durianDecoyDuration 1
execute if score @s durianDecoyDuration matches 1.. at @s run tp @e[type=minecraft:villager,tag=durianDecoy,sort=nearest,distance=..2,limit=1] ~ ~ ~
execute if score @s durianDecoyDuration matches ..0 at @s run playsound minecraft:entity.armor_stand.break player @a ~ ~ ~ 1 1.5
execute if score @s durianDecoyDuration matches ..0 at @s run kill @e[type=minecraft:villager,tag=durianDecoy,sort=nearest,distance=..2,limit=1]
execute if score @s durianDecoyDuration matches ..0 run kill @s
