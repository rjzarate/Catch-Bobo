#gives the player the shot tag (for the apply/damage)
scoreboard players operation .search uuid = @e[type=minecraft:area_effect_cloud,tag=trojanHorse,sort=nearest,tag=linked,limit=1] uuidLink
execute as @a[tag=hunter,tag=hacker,gamemode=!spectator,predicate=general:uuid_search,limit=1] run tag @s add shot

#visuals and audio
execute as @a[tag=hunter,tag=hacker,gamemode=!spectator,tag=shot] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 0.5 0

playsound minecraft:entity.horse.gallop player @a ~ ~ ~ 0.75 1.5

scoreboard players operation #damage temp = @e[type=minecraft:area_effect_cloud,tag=trojanHorse,sort=nearest,tag=linked] trojanHorseDamage
function general:apply/damage/directory

tag @a remove shot