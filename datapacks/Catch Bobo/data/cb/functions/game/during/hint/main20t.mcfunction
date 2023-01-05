kill @e[type=area_effect_cloud,tag=hint]
execute if score number hint matches 2..3 run summon area_effect_cloud -80 65 -113 {Duration:12000,Tags:["noDamage","noTimeStop","hint"]}

execute if score number hint matches 2 positioned -80 65 -113 run function cb:game/during/hint/2_active
execute if score number hint matches 3 positioned -80 65 -113 run function cb:game/during/hint/3_active