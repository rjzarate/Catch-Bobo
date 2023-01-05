execute positioned ^ ^ ^1 run particle flame ~ ~ ~ 0.2 0.2 0.2 0.02 2 normal

execute positioned ^ ^ ^1 at @e[tag=!noDamage,dy=1.5,type=!arrow] unless entity @s[dy=1.5] run summon arrow ~ ~2.19 ~ {Fire:20,Motion:[0.0,-2.0,0.0]}

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if entity @s[distance=..5] run function cb:game/during/player/skills/hunters/boba_fett/flamethrower/raycast