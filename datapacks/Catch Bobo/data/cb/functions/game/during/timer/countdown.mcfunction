execute store result bossbar minecraft:initial_timer max run scoreboard players get constant sInitialT
execute store result bossbar minecraft:initial_timer value run scoreboard players get number initialT

execute if score number gameT matches 21.. store result bossbar minecraft:timer max run scoreboard players get constant sGameT
execute if score number gameT matches ..20 store result bossbar minecraft:timer max run scoreboard players get constant gameT
execute if score number gameT matches 21.. run bossbar set minecraft:timer style progress
execute if score number gameT matches ..20 run bossbar set minecraft:timer style notched_20
execute store result bossbar minecraft:timer value run scoreboard players get number gameT

execute unless score constant hunterCount matches 0 unless entity @a[team=Bobo,tag=bobo,gamemode=spectator] if score number gameT <= number gameTE unless score constant sGameT matches 0 run function cb:game/post/winner/time/directory
execute unless score number initialT matches 1.. unless score boolean objectiveSLT matches 1 unless score constant sGameT matches 0 unless entity @a[tag=timeStop] run scoreboard players remove number gameT 1
execute unless score number initialT matches 1.. unless score constant sEnableH matches 0 unless entity @a[tag=timeStop] run scoreboard players remove number hintT 1
execute unless score number initialT matches 1.. unless score constant sEnableH matches 0 unless entity @a[tag=timeStop] if score number hintT matches ..0 run function cb:game/during/hint/directory
execute if score number initialT matches 1.. run scoreboard players remove number initialT 1

bossbar set minecraft:initial_timer visible false
execute if score number initialT matches 1.. run bossbar set minecraft:initial_timer players @a
execute if score number initialT matches 1.. run bossbar set minecraft:initial_timer visible true

bossbar set minecraft:timer visible false
execute unless score number initialT matches 1.. run bossbar set minecraft:timer players @a
execute unless score number initialT matches 1.. unless score boolean objectiveSLT matches 1 unless score constant sGameT matches 0 run bossbar set minecraft:timer visible true
execute unless score number initialT matches 1.. run function cb:game/during/timer/notify
