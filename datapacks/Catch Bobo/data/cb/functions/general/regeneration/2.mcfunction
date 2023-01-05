execute unless score @s crouch matches 1.. run function cb:general/regeneration/3

scoreboard players add @s[scores={crouch=1..}] crouching 1



execute if score @s crouching >= constant crouchingRegen run effect give @s minecraft:regeneration 1 2 true

execute if score @s crouching >= constant crouchingRegen run scoreboard players reset @s running
execute if score @s crouching >= constant crouchingRegen run scoreboard players reset @s walking
execute if score @s crouching >= constant crouchingRegen run scoreboard players reset @s notMoving
execute if score @s crouching >= constant crouchingRegen run scoreboard players reset @s crouching

