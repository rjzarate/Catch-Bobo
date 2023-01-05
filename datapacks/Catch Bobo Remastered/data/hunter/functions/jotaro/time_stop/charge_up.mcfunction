execute at @s anchored eyes run particle minecraft:enchant ^ ^ ^ 0.2 0.2 0.2 20 10 normal
execute if score @s timeStopChargeUp matches 100 at @s run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 5 0.5
execute if score @s timeStopChargeUp matches 50 at @s run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 5 0.25
execute if score @s timeStopChargeUp matches 20 at @s run playsound minecraft:entity.warden.heartbeat player @a ~ ~ ~ 5 0

scoreboard players operation #1s timeStopChargeUp = @s timeStopChargeUp
scoreboard players operation #1s timeStopChargeUp %= #20 constant


execute if score #1s timeStopChargeUp matches 0 unless score @s timeStopChargeUp matches 0 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 50 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 30 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 15 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 10 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 5 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 3 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5
execute if score @s timeStopChargeUp matches 1 at @s run playsound minecraft:block.note_block.xylophone record @s ~ ~ ~ 0.75 1.5

execute if score @s[advancements={hunter:jotaro/damage_taken=false}] timeStopChargeUp matches 1.. run scoreboard players remove @s timeStopChargeUp 1
execute if score @s[advancements={hunter:jotaro/damage_taken=false}] timeStopChargeUp matches ..0 run function hunter:jotaro/time_stop/activate1

execute if entity @s[advancements={hunter:jotaro/damage_taken=true}] run function hunter:jotaro/time_stop/deactivate