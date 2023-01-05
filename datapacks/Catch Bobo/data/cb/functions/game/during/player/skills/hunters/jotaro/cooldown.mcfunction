execute if score @s timeStop matches ..0 if score @s timeStopCD matches ..0 run function cb:game/during/player/skills/hunters/jotaro/time_stop/reset
execute if score @s timeStop matches ..0 unless score @s timeStopCD matches ..0 run scoreboard players remove @s timeStopCD 1

execute if score @s ora matches ..0 if score @s oraCD matches ..0 run function cb:game/during/player/skills/hunters/jotaro/ora/reset
execute if score @s ora matches ..0 unless score @s oraCD matches ..0 run scoreboard players remove @s oraCD 1

execute if score @s starFinger matches ..0 if score @s starFingerCD matches ..0 run function cb:game/during/player/skills/hunters/jotaro/star_finger/reset
execute if score @s starFinger matches ..0 unless score @s starFingerCD matches ..0 run scoreboard players remove @s starFingerCD 1