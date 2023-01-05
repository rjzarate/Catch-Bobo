execute if score @s fabricationCD matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/fabrication/reset
execute unless score @s fabricationCD matches ..0 run scoreboard players remove @s fabricationCD 1

execute if score @s vIdentifier matches ..0 if score @s vIdentifierCD matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/vaccine_identifier/reset
execute if score @s vIdentifier matches ..0 unless score @s vIdentifierCD matches ..0 run scoreboard players remove @s vIdentifierCD 1

execute if score @s uConcoction matches ..0 if score @s uConcoctionCD matches ..0 run function cb:game/during/player/skills/hunters/vaccinator/unstable_concoction/reset
execute if score @s uConcoction matches ..0 unless score @s uConcoctionCD matches ..0 run scoreboard players remove @s uConcoctionCD 1

execute if score @s tracker matches ..0 run scoreboard players reset @s tracker
execute if score @s tracker matches 1.. run scoreboard players remove @s tracker 1
