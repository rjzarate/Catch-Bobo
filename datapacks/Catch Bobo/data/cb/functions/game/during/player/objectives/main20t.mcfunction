execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 1 run function cb:game/during/player/objectives/easy/markers
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 2 run function cb:game/during/player/objectives/medium/markers
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 4 run function cb:game/during/player/objectives/hard/markers