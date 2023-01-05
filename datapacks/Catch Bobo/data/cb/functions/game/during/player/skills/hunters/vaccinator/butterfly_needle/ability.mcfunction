execute at @s as @e[type=fishing_bobber,tag=!gotOwner] store result score @s Owner0 run data get entity @p[scores={bNeedle=1..}] UUID[0]
execute at @s as @e[type=fishing_bobber,tag=!gotOwner] store result score @s Owner1 run data get entity @p[scores={bNeedle=1..}] UUID[1]
execute at @s as @e[type=fishing_bobber,tag=!gotOwner] store result score @s Owner2 run data get entity @p[scores={bNeedle=1..}] UUID[2]
execute at @s as @e[type=fishing_bobber,tag=!gotOwner] store result score @s Owner3 run data get entity @p[scores={bNeedle=1..}] UUID[3]

execute at @e[type=fishing_bobber] if score @s UUID0 = @e[type=fishing_bobber,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=fishing_bobber,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=fishing_bobber,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=fishing_bobber,sort=nearest,limit=1] Owner3 at @e[type=fishing_bobber,sort=nearest,limit=1] run function cb:game/during/player/skills/hunters/vaccinator/butterfly_needle/effect



execute as @e[type=fishing_bobber,tag=!gotOwner] run tag @s add gotOwner
