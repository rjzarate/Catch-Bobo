function general:get_stats
execute store result score @s maxHealth run data get entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base 1
#adds glint and grayscales berserker armor
	item modify entity @s weapon.mainhand kit:enchantment/glint
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["berserkerArmor"]}}].Slot
	function general:animate/add/directory

#maxHealth/6 - health/6 = duration, atk speed, absorption lvl; if 0, sets to 1
scoreboard players operation #maxHealth maxHealth = @s maxHealth
scoreboard players operation #maxHealth maxHealth /= #6 constant
scoreboard players operation #health maxHealth = @s health
scoreboard players operation #health maxHealth /= #6 constant
scoreboard players operation #maxHealth maxHealth -= #health maxHealth
execute if score #maxHealth maxHealth matches ..0 run scoreboard players set #maxHealth maxHealth 1
scoreboard players operation .missingHealthDuration stats *= #20 constant
scoreboard players operation .missingHealthDuration stats *= #maxHealth maxHealth
#regular duration
	scoreboard players operation .duration stats *= #20 constant
	scoreboard players operation .missingHealthDuration stats += .duration stats
scoreboard players operation .missingHealthAttackSpeed stats *= #maxHealth maxHealth
scoreboard players operation .missingHealthTemporaryHealth stats *= #maxHealth maxHealth
scoreboard players operation .missingHealthMovementSpeed stats *= #maxHealth maxHealth

#for active function (particles)
scoreboard players operation @s indomitableWillStack = #maxHealth maxHealth
#duration
scoreboard players operation @s indomitableWillDuration = .missingHealthDuration stats
scoreboard players set @s[scores={indomitableWillDuration=..0}] indomitableWillDuration 1
#cooldown
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s indomitableWillCD = .cooldown stats
scoreboard players operation @s indomitableWillCD += .indomitableWillDuration stats

#attack speed
execute if score .missingHealthAttackSpeed stats matches 10.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-1 guts_indomitable_will_attack_speed_1 0.1 add
execute if score .missingHealthAttackSpeed stats matches 20.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-2 guts_indomitable_will_attack_speed_2 0.1 add
execute if score .missingHealthAttackSpeed stats matches 30.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-3 guts_indomitable_will_attack_speed_3 0.1 add
execute if score .missingHealthAttackSpeed stats matches 40.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-4 guts_indomitable_will_attack_speed_4 0.1 add
execute if score .missingHealthAttackSpeed stats matches 50.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-5 guts_indomitable_will_attack_speed_5 0.1 add
execute if score .missingHealthAttackSpeed stats matches 60.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-6 guts_indomitable_will_attack_speed_6 0.1 add
execute if score .missingHealthAttackSpeed stats matches 70.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-7 guts_indomitable_will_attack_speed_7 0.1 add
execute if score .missingHealthAttackSpeed stats matches 80.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-8 guts_indomitable_will_attack_speed_8 0.1 add
execute if score .missingHealthAttackSpeed stats matches 90.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-9 guts_indomitable_will_attack_speed_9 0.1 add
execute if score .missingHealthAttackSpeed stats matches 100.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-10 guts_indomitable_will_attack_speed_10 0.1 add
execute if score .missingHealthAttackSpeed stats matches 110.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-11 guts_indomitable_will_attack_speed_11 0.1 add
execute if score .missingHealthAttackSpeed stats matches 120.. run attribute @s minecraft:generic.attack_speed modifier add 1-0-1-1-12 guts_indomitable_will_attack_speed_12 0.1 add
#movement speed
execute if score .missingHealthMovementSpeed stats matches 10.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-1 guts_indomitable_will_movement_speed_1 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 20.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-2 guts_indomitable_will_movement_speed_2 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 30.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-3 guts_indomitable_will_movement_speed_3 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 40.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-4 guts_indomitable_will_movement_speed_4 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 50.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-5 guts_indomitable_will_movement_speed_5 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 60.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-6 guts_indomitable_will_movement_speed_6 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 70.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-7 guts_indomitable_will_movement_speed_7 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 80.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-8 guts_indomitable_will_movement_speed_8 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 90.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-9 guts_indomitable_will_movement_speed_9 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 100.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-10 guts_indomitable_will_movement_speed_10 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 110.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-11 guts_indomitable_will_movement_speed_11 0.005000000074505806 add
execute if score .missingHealthMovementSpeed stats matches 120.. run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-2-12 guts_indomitable_will_movement_speed_12 0.005000000074505806 add
#absorption
execute if score .missingHealthTemporaryHealth stats matches 4.. run function general:apply/effect/give_absorption/1
execute if score .missingHealthTemporaryHealth stats matches 8.. run function general:apply/effect/give_absorption/2
execute if score .missingHealthTemporaryHealth stats matches 12.. run function general:apply/effect/give_absorption/3
execute if score .missingHealthTemporaryHealth stats matches 16.. run function general:apply/effect/give_absorption/4
execute if score .missingHealthTemporaryHealth stats matches 20.. run function general:apply/effect/give_absorption/5
execute if score .missingHealthTemporaryHealth stats matches 24.. run function general:apply/effect/give_absorption/6
execute if score .missingHealthTemporaryHealth stats matches 28.. run function general:apply/effect/give_absorption/7
execute if score .missingHealthTemporaryHealth stats matches 32.. run function general:apply/effect/give_absorption/8
execute if score .missingHealthTemporaryHealth stats matches 36.. run function general:apply/effect/give_absorption/9
execute if score .missingHealthTemporaryHealth stats matches 40.. run function general:apply/effect/give_absorption/10
execute if score .missingHealthTemporaryHealth stats matches 44.. run function general:apply/effect/give_absorption/11
execute if score .missingHealthTemporaryHealth stats matches 48.. run function general:apply/effect/give_absorption/12
scoreboard players operation @s absorption = @s absorption
execute if score @s absorption < .missingHealthDuration stats run scoreboard players operation @s absorption = .missingHealthDuration stats
#audio
execute if score @s indomitableWillStack matches 1..4 at @s run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 1 0.70
execute if score @s indomitableWillStack matches 5..9 at @s run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 2 0.70
execute if score @s indomitableWillStack matches 10.. at @s run playsound minecraft:entity.enderman.scream player @a ~ ~ ~ 3 0.70