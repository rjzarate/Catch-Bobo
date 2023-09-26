tag @s remove adwared
kill @e[type=minecraft:item,nbt={Item:{tag:{Tags:["adwareVirus"]}}},limit=1]
clear @s minecraft:coal{Tags:["adwareFiller"]}
scoreboard players reset @s adwareDropped
say Removed Ads