execute if score O0 objectiveMList matches 1 at @s if score @s gGCD matches 150 if entity @e[type=armor_stand,tag=gG,distance=..3] run function cb:game/during/player/objectives/medium/0/finished
execute if score O1 objectiveMList matches 1 at @s if entity @e[type=wandering_trader,tag=sans,distance=101..] run function cb:game/during/player/objectives/medium/1/finished
execute if score O1 objectiveMList matches 1 unless entity @e[type=wandering_trader,tag=sans] at @s run function cb:game/during/player/objectives/medium/1/summon
execute if score O2 objectiveMList matches 1 if score @s objectiveAbility matches 10.. run function cb:game/during/player/objectives/medium/2/finished
execute if score O3 objectiveMList matches 1 if score @s objectiveDamageT matches 200.. run function cb:game/during/player/objectives/medium/3/finished
execute if score O4 objectiveMList matches 1 if score @s objectivePotion matches 15.. run function cb:game/during/player/objectives/medium/4/finished
execute if score O5 objectiveMList matches 1 if score @s objectiveFish matches 1.. run function cb:game/during/player/objectives/medium/5/finished
execute if score O6 objectiveMList matches 1 at @s if entity @e[type=marker,tag=MO6,distance=..3.5] run function cb:game/during/player/objectives/medium/6/finished
execute if score O7 objectiveMList matches 1 at @s if entity @e[type=item,tag=pickle,distance=..1] run function cb:game/during/player/objectives/medium/7/finished
execute if score O8 objectiveMList matches 1 at @s if entity @e[type=marker,tag=MO8,distance=..6] run function cb:game/during/player/objectives/medium/8/finished
execute if score O9 objectiveMList matches 1 if score @s objectiveSpike matches 1.. run function cb:game/during/player/objectives/medium/9/finished
execute if score O10 objectiveMList matches 1 unless entity @e[type=marker,tag=water] run function cb:game/during/player/objectives/medium/10/finished
execute if score O11 objectiveMList matches 1 run function cb:game/during/player/objectives/medium/11/check
execute if score O12 objectiveMList matches 1 if score @s objectiveBell matches 1.. run function cb:game/during/player/objectives/medium/12/finished
execute if score O13 objectiveMList matches 1 if block 161 35 -201 minecraft:jukebox[has_record=true] run function cb:game/during/player/objectives/medium/13/finished
execute if score O14 objectiveMList matches 1 if score @s objectiveFire matches 1.. run function cb:game/during/player/objectives/medium/14/check
execute if score O14 objectiveMList matches 1 if score @s objectiveSFire matches 1.. run function cb:game/during/player/objectives/medium/14/check
execute if score O15 objectiveMList matches 1 if block -35 39 -190 minecraft:fire run function cb:game/during/player/objectives/medium/15/finished
execute if score O17 objectiveMList matches 1 if predicate cb:enderman run function cb:game/during/player/objectives/medium/17/finished