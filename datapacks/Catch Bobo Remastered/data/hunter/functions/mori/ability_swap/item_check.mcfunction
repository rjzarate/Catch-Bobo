execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["yongpyoPower"]}}}] run function hunter:mori/ability_swap/yongpyo_acceleration
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["yongpyoAcceleration"]}}}] run function hunter:mori/ability_swap/yongpyo_power

scoreboard players reset @s droppedEnderEye