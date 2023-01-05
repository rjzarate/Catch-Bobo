particle dust 1.000 0.000 0.000 1 ~ ~ ~ 0 0 0 1 0 normal @p[predicate=general:uuid_search]

execute positioned ^ ^ ^1.5 unless entity @e[type=minecraft:turtle,distance=..2,tag=red,tag=createVentParticles] run function orangutan:impostor/vent/holding/particles/red