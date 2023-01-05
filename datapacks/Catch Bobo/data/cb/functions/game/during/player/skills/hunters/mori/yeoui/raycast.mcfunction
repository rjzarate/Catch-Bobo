execute positioned ^ ^ ^1 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 normal

execute positioned ^ ^ ^1 as @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] as @p[tag=shotYeoui] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute positioned ^ ^ ^1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches 1 as @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/damage0
execute positioned ^ ^ ^1 unless score @s yongpyoCD matches 120.. as @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/damage0
execute positioned ^ ^ ^1 if score @s switchMode matches 0 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 as @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/damage0
execute positioned ^ ^ ^1 if score @s switchMode matches 1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 as @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/damage1

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if score @s yongpyoCD matches 120.. if score @s yongpyo matches 1 if entity @a[tag=shotYeoui,distance=..8] unless entity @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/raycast

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables unless score @s yongpyoCD matches 120.. if entity @a[tag=shotYeoui,distance=..8] unless entity @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/raycast

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if score @s switchMode matches 0 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 if entity @a[tag=shotYeoui,distance=..8] unless entity @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/raycast

execute positioned ^ ^ ^1 if block ~ ~ ~ #cb:dashables if score @s switchMode matches 1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 if entity @a[tag=shotYeoui,distance=..11] unless entity @e[tag=!noDamage,tag=!shotYeoui,dy=1.5] run function cb:game/during/player/skills/hunters/mori/yeoui/raycast
