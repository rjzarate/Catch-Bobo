execute positioned ^ ^ ^1 run particle dust_color_transition 0.871 0.820 0.106 1 1.000 1.000 1.000 ~ ~ ~ 0 0 0 0 1 force

execute positioned ^ ^ ^1 unless block ~ ~ ~ #cb:dashables run function cb:game/during/player/skills/hunters/mori/geundoowun/form
execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotGeundoowun,dy=1.5] run function cb:game/during/player/skills/hunters/mori/geundoowun/form



execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if entity @a[tag=!noDamage,tag=shotGeundoowun,distance=..400] unless entity @e[tag=!noDamage,tag=!shotGeundoowun,dy=1.5] run function cb:game/during/player/skills/hunters/mori/geundoowun/raycast