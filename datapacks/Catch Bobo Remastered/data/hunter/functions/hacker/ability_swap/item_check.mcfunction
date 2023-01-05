execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["rootkit"]}}}] run function hunter:hacker/ability_swap/ransomware
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["ransomware"]}}}] run function hunter:hacker/ability_swap/rootkit

execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["adware"]}}}] run function hunter:hacker/ability_swap/spyware
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["spyware"]}}}] run function hunter:hacker/ability_swap/adware

scoreboard players reset @s droppedEnderEye