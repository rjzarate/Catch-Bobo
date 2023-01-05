execute if predicate general:item/on_drop run data modify entity @s Owner set from entity @s Thrower
execute if predicate general:item/on_drop run data modify entity @s PickupDelay set value 0s

execute if predicate general:item/kill_on_drop run kill @s

tag @s add checked