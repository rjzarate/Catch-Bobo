execute if entity @s[tag=!timeStoppee] run function orangutan:teemo/cooldown
execute if entity @s run function orangutan:teemo/refresh
execute if entity @s[tag=!timeStoppee] run function orangutan:teemo/fire_rate

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={orangutan:teemo=true},tag=!timeStoppee] if score .rightClick enderEye matches 0 run function orangutan:teemo/ability_directory
execute if entity @s[advancements={orangutan:teemo=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={orangutan:teemo=true}] run advancement revoke @s only orangutan:teemo

#crossbow activation
execute if entity @s[advancements={orangutan:teemo/toxic_shot=true}] run function orangutan:teemo/toxic_shot/activate
execute if entity @s[advancements={orangutan:teemo/toxic_shot=true}] run advancement revoke @s only orangutan:teemo/toxic_shot
execute if entity @s[advancements={orangutan:teemo/blinding_dart=true}] run function orangutan:teemo/blinding_dart/activate
execute if entity @s[advancements={orangutan:teemo/blinding_dart=true}] run advancement revoke @s only orangutan:teemo/blinding_dart

#crossbow reload
execute if predicate orangutan:teemo/toxic_shot0 if score @s toxicShotAmmo matches 1.. unless score @s toxicShotFireRate matches 1.. run function orangutan:teemo/toxic_shot/reload
execute if predicate orangutan:teemo/blinding_dart0 unless score @s blindingDartCD matches 1.. run function orangutan:teemo/blinding_dart/reload
execute if score @s[tag=!timeStoppee] recallChargeUp matches 1.. run function orangutan:teemo/recall/charge_up

#move quick
execute if score @s[tag=!timeStoppee] moveQuickDuration matches 1.. run function orangutan:teemo/move_quick/active

#time stopped crossbows
execute if entity @s[tag=timeStoppee] if predicate orangutan:teemo/toxic_shot1 run function orangutan:teemo/toxic_shot/clear
execute if entity @s[tag=timeStoppee] if predicate orangutan:teemo/blinding_dart1 run function orangutan:teemo/blinding_dart/clear


function orangutan:teemo/guerrilla_warfare/active