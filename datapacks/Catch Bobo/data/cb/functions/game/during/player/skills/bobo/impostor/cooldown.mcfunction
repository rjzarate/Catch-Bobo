execute if score @s kill matches ..0 if score @s killCD matches ..0 run function cb:game/during/player/skills/bobo/impostor/kill/reset
execute if entity @s[tag=!emergencyMeeting] if score @s kill matches ..0 unless score @s killCD matches ..0 run scoreboard players remove @s killCD 1

execute if score @s vent matches ..0 if score @s ventCD matches ..0 run function cb:game/during/player/skills/bobo/impostor/vent/reset
execute if entity @s[tag=!emergencyMeeting] if score @s vent matches ..0 unless score @s ventCD matches ..0 run scoreboard players remove @s ventCD 1

execute if score @s destroyVent matches ..0 if score @s destroyVentCD matches ..0 run function cb:game/during/player/skills/bobo/impostor/destroy_vent/reset
execute if entity @s[tag=!emergencyMeeting] if score @s destroyVent matches ..0 unless score @s destroyVentCD matches ..0 run scoreboard players remove @s destroyVentCD 1

execute if score @s eMeeting matches ..0 if score @s eMeetingCD matches ..0 run function cb:game/during/player/skills/bobo/impostor/emergency_meeting/reset
execute if score @s eMeeting matches ..0 unless score @s eMeetingCD matches ..0 run scoreboard players remove @s eMeetingCD 1

execute if score @s o2 matches ..0 if score @s o2CD matches ..0 run function cb:game/during/player/skills/bobo/impostor/o2/reset
execute if score @s o2 matches ..0 unless score @s o2CD matches ..0 if score @s o2CD matches 180.. unless entity @a[tag=emergencyMeeting] run scoreboard players remove @s o2CD 1
execute if score @s o2 matches ..0 unless score @s o2CD matches ..0 if score @s o2CD matches ..179 run scoreboard players remove @s o2CD 1

execute if score @s lights matches ..0 if score @s lightsCD matches ..0 run function cb:game/during/player/skills/bobo/impostor/lights/reset
execute if score @s lights matches ..0 unless score @s lightsCD matches ..0 if score @s lightsCD matches 180.. unless entity @a[tag=emergencyMeeting] run scoreboard players remove @s lightsCD 1
execute if score @s lights matches ..0 unless score @s lightsCD matches ..0 if score @s lightsCD matches ..179 run scoreboard players remove @s lightsCD 1