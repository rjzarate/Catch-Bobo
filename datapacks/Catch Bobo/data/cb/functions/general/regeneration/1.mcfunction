execute unless score @s walk matches 1.. unless score @s walkOnWater matches 1.. unless score @s walkUnderWater matches 1.. run function cb:general/regeneration/2

scoreboard players set @s[scores={walk=1..}] walkingCheck 1
scoreboard players set @s[scores={walkOnWater=1..}] walkingCheck 1
scoreboard players set @s[scores={walkUnderWater=1..}] walkingCheck 1

scoreboard players add @s[scores={walkingCheck=1}] walking 1



execute if score @s walking >= constant walkingRegen run effect give @s minecraft:regeneration 1 2 true

execute if score @s walking >= constant walkingRegen run scoreboard players reset @s running
execute if score @s walking >= constant walkingRegen run scoreboard players reset @s notMoving
execute if score @s walking >= constant walkingRegen run scoreboard players reset @s crouching
execute if score @s walking >= constant walkingRegen run scoreboard players reset @s walking
