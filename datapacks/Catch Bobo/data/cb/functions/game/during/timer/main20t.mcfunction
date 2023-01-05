bossbar set minecraft:last_timer visible false

execute if score boolean objectiveSLT matches 1 unless score number objectiveLPT matches 0.. run function cb:game/during/timer/last
execute if score number objectiveLPT matches 0.. if score @p[team=Bobo,tag=bobo] objectiveS matches 5 run function cb:game/during/timer/pre_last
function cb:game/during/timer/countdown
execute if score number initialT matches 0.. run function cb:game/during/timer/initial