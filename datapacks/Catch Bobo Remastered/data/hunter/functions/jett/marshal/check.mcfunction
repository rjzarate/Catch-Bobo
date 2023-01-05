execute if score @s marshalEquip >= .equipTime20t marshalStats if score @s marshalScope >= .scopeTime20t marshalStats if predicate general:on_ground unless score @s moving matches 1 run function hunter:jett/marshal/fire


execute if score @s marshalEquip >= .equipTime20t marshalStats if score @s marshalScope >= .scopeTime20t marshalStats unless predicate general:on_ground run scoreboard players set #consumeAmmo marshalRightClick 1
execute if score @s marshalEquip >= .equipTime20t marshalStats if score @s marshalScope >= .scopeTime20t marshalStats if score @s moving matches 1 run scoreboard players set #consumeAmmo marshalRightClick 1
execute if score #consumeAmmo marshalRightClick matches 1 run scoreboard players remove @s marshalAmmo 1
execute if score #consumeAmmo marshalRightClick matches 1 if score @s marshalAmmo < .maxAmmo marshalStats unless score @s marshalCD matches 1.. run scoreboard players operation @s marshalCD += .cooldown20t marshalStats
execute if score #consumeAmmo marshalRightClick matches 1 at @s run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1 2
execute if score #consumeAmmo marshalRightClick matches 1 at @s anchored eyes run particle minecraft:crit ^ ^ ^ 0.2 0.2 0.2 1 5
scoreboard players reset @s marshalScope
scoreboard players reset #success marshalRightClick
scoreboard players reset #consumeAmmo marshalRightClick