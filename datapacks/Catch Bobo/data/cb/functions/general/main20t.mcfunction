function cb:general/debug_stick
function cb:general/saturation

scoreboard players add @e[type=bat,tag=temp] tempTime 1
scoreboard players add @e[type=arrow,tag=temp] tempTime 1
execute as @e[type=bat,tag=temp] if score @s tempTime matches 3.. run kill @s
execute as @e[type=arrow,tag=temp] if score @s tempTime matches 3.. run kill @s