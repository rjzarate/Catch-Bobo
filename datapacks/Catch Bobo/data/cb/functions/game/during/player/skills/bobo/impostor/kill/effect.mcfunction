effect give @s blindness 2 0
effect give @s slowness 1 4
effect give @s resistance 1 4
effect give @s weakness 2 10
title @s times 0 30 0
title @s title ["",{"text":"You are ","bold":true},{"text":"Stunned","bold":true,"color":"gold"},{"text":"!","bold":true}]
title @s subtitle {"text":"Have a player crouch near you to become unstunned."}
execute at @s run particle minecraft:block yellow_concrete ~ ~1 ~ .2 .5 .2 2 5

execute at @s if entity @a[tag=!stun,scores={sneak=8..},distance=..2] run playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 2 1.5
execute at @s if entity @a[tag=!stun,scores={sneak=8..},distance=..2] run tag @s remove stun