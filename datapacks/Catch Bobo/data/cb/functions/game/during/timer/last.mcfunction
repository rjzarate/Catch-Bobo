execute if score number objectiveLT matches ..0 run say bobo wins
execute if score constant sEnableLOG matches 1 as @a[team=Bobo,tag=bobo] if score @s dD matches ..0 if score @s dDCD matches ..149 run effect give @s glowing 2 0
execute if score constant sEnableLOG matches 1 as @a[team=Bobo,tag=bobo] if score @s dD matches 1.. run effect give @s glowing 11 0

execute if score number objectiveLT matches 11.. store result bossbar minecraft:last_timer max run scoreboard players get constant sLastOT
execute if score number objectiveLT matches ..10 store result bossbar minecraft:last_timer max run scoreboard players get constant objectiveLT
execute if score number objectiveLT matches 11.. run bossbar set minecraft:last_timer style progress
execute if score number objectiveLT matches ..10 run bossbar set minecraft:last_timer style notched_10
execute store result bossbar minecraft:last_timer value run scoreboard players get number objectiveLT

execute if score number objectiveLT matches ..0 run function cb:game/post/winner/objective/bobo
execute unless entity @a[tag=timeStop] run scoreboard players remove number objectiveLT 1

bossbar set minecraft:last_timer players @a
bossbar set minecraft:last_timer visible true

execute if score number objectiveLT matches 0..9 unless entity @a[tag=timeStop] as @a at @s run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 2