execute as @e[type=item,tag=!checked] if data entity @s Item.tag.noDrop run data modify entity @s Owner set from entity @s Thrower
execute as @e[type=item,tag=!checked] if data entity @s Item.tag.noDrop run data modify entity @s PickupDelay set value 0s

tag @e[type=item] add checked