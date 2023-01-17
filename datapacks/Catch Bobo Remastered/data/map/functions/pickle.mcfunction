kill @e[type=item,tag=pickle]
summon item ~ ~ ~ {CustomNameVisible:1b,Age:-32768,Health:100000,PickupDelay:32767,Tags:["pickle","check"],CustomName:'{"text":"Pickle Rick","color":"aqua","bold":true,"italic":false}',Item:{id:"minecraft:sea_pickle",Count:1b,tag:{Enchantments:[{}]}}}

execute as @e[type=item,tag=pickle] run spreadplayers 96 -288 1 175 under 80 false @s