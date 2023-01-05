execute unless entity @s[nbt={OnGround:0b}] unless score @s sprint matches 1.. unless score @s swim matches 1.. run function cb:general/regeneration/1

scoreboard players set @s[nbt={OnGround:0b}] runningCheck 1
scoreboard players set @s[scores={sprint=1..}] runningCheck 1
scoreboard players set @s[scores={swim=1..}] runningCheck 1

scoreboard players add @s[scores={runningCheck=1}] running 1



execute if score @s running >= constant runningRegen run effect give @s minecraft:regeneration 1 2 true

execute if score @s running >= constant runningRegen run scoreboard players reset @s notMoving
execute if score @s running >= constant runningRegen run scoreboard players reset @s crouching
execute if score @s running >= constant runningRegen run scoreboard players reset @s walking
execute if score @s running >= constant runningRegen run scoreboard players reset @s running
