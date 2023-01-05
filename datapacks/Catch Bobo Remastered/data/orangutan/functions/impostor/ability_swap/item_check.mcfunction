execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["sabotageLights"]}}}] run function orangutan:impostor/ability_swap/sabotage/o2
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["sabotageO2"]}}}] run function orangutan:impostor/ability_swap/sabotage/reactor
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["sabotageReactor"]}}}] run function orangutan:impostor/ability_swap/sabotage/lights

execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["createGreenVent"]}}}] run function orangutan:impostor/ability_swap/create_vent/red
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["createRedVent"]}}}] run function orangutan:impostor/ability_swap/create_vent/blue
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["createBlueVent"]}}}] run function orangutan:impostor/ability_swap/create_vent/yellow
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["createYellowVent"]}}}] run function orangutan:impostor/ability_swap/create_vent/green

scoreboard players reset @s droppedEnderEye