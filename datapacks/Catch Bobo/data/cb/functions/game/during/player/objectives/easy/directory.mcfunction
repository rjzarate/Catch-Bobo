execute if score O1 objectiveEList matches 1 if score @s objectiveJump matches 100.. run function cb:game/during/player/objectives/easy/1/finished
execute if score O2 objectiveEList matches 1 if score @s objectiveBook matches 1.. run function cb:game/during/player/objectives/easy/2/finished
execute if score O3 objectiveEList matches 1 run function cb:game/during/player/objectives/easy/3/check
execute if score O4 objectiveEList matches 1 run function cb:game/during/player/objectives/easy/4/check
execute if score O5 objectiveEList matches 1 at @s if entity @e[type=marker,tag=EO5,distance=..0.5] run function cb:game/during/player/objectives/easy/5/finished
execute if score O6 objectiveEList matches 1 if score @s objectiveSneak matches 1.. run function cb:game/during/player/objectives/easy/6/check
execute if score O7 objectiveEList matches 1 positioned -35.0 39.5625 -285.0 if entity @s[distance=..5] run function cb:game/during/player/objectives/easy/7/finished
execute if score O8 objectiveEList matches 1 if score @s objectiveCalcite matches 9.. run function cb:game/during/player/objectives/easy/8/finished
execute if score O9 objectiveEList matches 1 positioned 106 41 -206 if entity @s[distance=..0.75] run function cb:game/during/player/objectives/easy/9/finished
execute if score O10 objectiveEList matches 1 if predicate cb:milk/mainhand run function cb:game/during/player/objectives/easy/10/finished
execute if score O10 objectiveEList matches 1 if predicate cb:milk/offhand run function cb:game/during/player/objectives/easy/10/finished
execute if score O12 objectiveEList matches 1 if score @s objectiveLighter matches 1.. run function cb:game/during/player/objectives/easy/12/finished
execute if score O14 objectiveEList matches 1 if score @s objectiveWool matches 20.. run function cb:game/during/player/objectives/easy/14/finished
execute if score O15 objectiveEList matches 1 if entity @e[type=armor_stand,tag=package,tag=!delivered] run function cb:game/during/player/objectives/easy/15/check1
execute if score O15 objectiveEList matches 1 unless entity @e[type=armor_stand,tag=package,tag=!delivered] run function cb:game/during/player/objectives/easy/15/check2
execute if score O16 objectiveEList matches 1 if predicate cb:boat run function cb:game/during/player/objectives/easy/16/finished
execute if score O17 objectiveEList matches 1 if entity @e[type=sheep,tag=shaun,nbt={Sheared:1b}] run function cb:game/during/player/objectives/easy/17/finished
execute if score O18 objectiveEList matches 1 if block 96 102 -272 air run function cb:game/during/player/objectives/easy/18/finished
execute if score O19 objectiveEList matches 1 if predicate cb:pig run function cb:game/during/player/objectives/easy/19/finished
execute if score O21 objectiveEList matches 1 if score @s objectiveEgg matches 100.. run function cb:game/during/player/objectives/easy/21/finished
execute if score O22 objectiveEList matches 1 if score @s objectiveDiamond matches 1.. run function cb:game/during/player/objectives/easy/22/finished
execute if score O24 objectiveEList matches 1 at @s if entity @e[type=marker,tag=EO24,distance=..0.5] run function cb:game/during/player/objectives/easy/24/finished
execute if score O25 objectiveEList matches 1 if score @s objectiveEye matches 1.. run function cb:game/during/player/objectives/easy/25/finished
execute if score O26 objectiveEList matches 1 at @s if entity @e[type=marker,tag=EO26,distance=..4] run function cb:game/during/player/objectives/easy/26/finished