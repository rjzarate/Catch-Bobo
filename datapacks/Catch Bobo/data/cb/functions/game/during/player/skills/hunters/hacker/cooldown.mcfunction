execute if score @s battery matches ..99 if score @s batteryCD matches ..0 run function cb:game/during/player/skills/hunters/hacker/battery/reset
execute if score @s battery matches ..99 unless score @s batteryCD matches ..0 run scoreboard players remove @s batteryCD 1

execute if score @s rewireLocationCD matches ..0 run function cb:game/during/player/skills/hunters/hacker/rewire_location/reset
execute if score @s rewireLocationCD matches 1.. run scoreboard players remove @s rewireLocationCD 1