scoreboard players remove number objectiveLPT 1
execute if score number objectiveLPT matches ..0 as @a[team=Bobo,tag=bobo] run function cb:game/pre/player/objectives/items/last
execute if score number objectiveLPT matches ..0 run scoreboard players reset number objectiveLPT