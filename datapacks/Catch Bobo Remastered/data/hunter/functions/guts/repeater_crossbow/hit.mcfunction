#gives the player the shot tag (for the apply/damage)
scoreboard players operation .search uuid = @e[type=minecraft:armor_stand,tag=repeaterCrossbow,sort=nearest,tag=moving,limit=1] uuidLink
tag @a[tag=hunter,tag=guts,predicate=general:uuid_search] add shot

#visuals and audio
execute as @a[tag=hunter,tag=guts,gamemode=!spectator,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0
execute at @e[type=minecraft:armor_stand,tag=repeaterCrossbow,sort=nearest,tag=moving] run particle minecraft:block minecraft:end_rod ~ ~1 ~ 0 0 0 1 3

scoreboard players operation #damage temp = @e[type=minecraft:armor_stand,tag=repeaterCrossbow,sort=nearest,tag=moving] repeaterCrossbowDamage
function general:apply/damage/directory

kill @e[type=minecraft:armor_stand,tag=repeaterCrossbow,sort=nearest,tag=moving]

tag @a remove shot