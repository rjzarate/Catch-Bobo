scoreboard players add @s notMoving 1

execute if score @s notMoving >= constant notMovingRegen run effect give @s minecraft:regeneration 1 2 true

execute if score @s notMoving >= constant notMovingRegen run scoreboard players reset @s crouching
execute if score @s notMoving >= constant notMovingRegen run scoreboard players reset @s running
execute if score @s notMoving >= constant notMovingRegen run scoreboard players reset @s walking
execute if score @s notMoving >= constant notMovingRegen run scoreboard players reset @s notMoving