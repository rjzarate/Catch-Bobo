function cb:game/during/map/main20t
execute if score constant gameInProgress matches 1 run function cb:game/during/timer/main20t
execute if score constant gameInProgress matches 1..2 if score constant sDaylightT matches 1 run time add 4s
execute if score constant gameInProgress matches 1..2 if score constant sDaylightT matches 2 run time add 2s
execute if score constant gameInProgress matches 1..2 if score constant sDaylightT matches 3 run time add 1.333333333333s
execute if score constant gameInProgress matches 1..2 if score constant sDaylightT matches 4 run time add 1s
bossbar set minecraft:post_timer visible false
execute if score constant gameInProgress matches 2 run function cb:game/post/timer/countdown
function cb:game/during/player/skills/main20t
function cb:game/during/player/objectives/main20t
function cb:general/main20t

schedule function cb:main20t 20t