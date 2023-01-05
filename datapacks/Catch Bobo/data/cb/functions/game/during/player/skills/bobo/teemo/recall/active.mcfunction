execute if score @s crossbowTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s damageTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if entity @s[nbt={OnGround:0b}] run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s crouchTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s sprintTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s swimTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s walkTeemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s water1Teemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed
execute if score @s water2Teemo matches 1.. run function cb:game/during/player/skills/bobo/teemo/recall/failed

execute at @s run particle minecraft:nautilus ~ ~10 ~ 0.2 20 0.2 1 150 force
execute at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 2 1