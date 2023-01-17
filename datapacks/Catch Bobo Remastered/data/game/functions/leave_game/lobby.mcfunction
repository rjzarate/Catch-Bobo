
function general:clear_abilities
function general:clear_effects
function general:clear_modifiers
function general:clear_tags
attribute @s minecraft:generic.max_health base set 20
attribute @s minecraft:generic.armor base set 0
attribute @s minecraft:generic.attack_damage base set 1
attribute @s minecraft:generic.attack_speed base set 4
attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
effect give @s minecraft:instant_health 1 100 true
effect give @s minecraft:instant_damage 1 0 true
spawnpoint @s 0 53 0
clear @s
effect clear @s
gamemode adventure @s
team join Lobby @s
tp @s 0 54 0
scoreboard players reset @s ff

scoreboard players operation .search uuidLink = @s uuid
kill @e[type=#general:no_players,predicate=general:uuid_link_search]
kill @e[type=minecraft:area_effect_cloud,predicate=general:uuid_link_search]
kill @e[type=minecraft:armor_stand,predicate=general:uuid_link_search]
kill @e[type=minecraft:marker,predicate=general:uuid_link_search]
kill @e[type=minecraft:item,predicate=general:uuid_link_search]