execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 1 run function cb:game/during/player/objectives/easy/directory
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 1 if score @s objectiveEC matches ..0 run function cb:game/during/player/objectives/easy/change
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 2 run function cb:game/during/player/objectives/medium/directory
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 2 if score @s objectiveMC matches ..0 run function cb:game/during/player/objectives/medium/change
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 3 run function cb:game/during/player/objectives/halfway/directory
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 4 run function cb:game/during/player/objectives/hard/directory
execute as @a[team=Bobo,tag=bobo] if score @s objectiveS matches 4 if score @s objectiveHC matches ..0 run function cb:game/during/player/objectives/hard/change