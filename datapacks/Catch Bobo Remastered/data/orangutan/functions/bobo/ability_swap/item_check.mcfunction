execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["blindingBlueberry"]}}}] run function orangutan:bobo/ability_swap/durian_decoy
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["durianDecoy"]}}}] run function orangutan:bobo/ability_swap/blinding_blueberry

execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["guavaGrenade"]}}}] run function orangutan:bobo/ability_swap/hot_potato_planter
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["hotPotatoPlanter"]}}}] run function orangutan:bobo/ability_swap/guava_grenade

execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["starfruitSwapper"]}}}] run function orangutan:bobo/ability_swap/tangerine_teleporter
execute at @s if entity @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{Tags:["tangerineTeleporter"]}}}] run function orangutan:bobo/ability_swap/starfruit_swapper

scoreboard players reset @s droppedEnderEye