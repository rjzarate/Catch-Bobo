scoreboard players operation number hintT = constant sHintBT
scoreboard players remove number hintT 1

execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 0..8 run function cb:game/during/hint/0
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 9..16 run function cb:game/during/hint/1
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 17..24 run function cb:game/during/hint/2
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 25..32 run function cb:game/during/hint/3
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 33..40 run function cb:game/during/hint/4
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 41..48 run function cb:game/during/hint/5
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 49..56 run function cb:game/during/hint/6
execute if score @p[team=Bobo,tag=bobo] randomOutcome matches 57..63 run function cb:game/during/hint/7