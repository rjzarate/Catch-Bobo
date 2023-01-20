scoreboard players operation .search uuid = @s uuidLink


execute as @a[tag=hunter,tag=officer,predicate=general:uuid_search] run attribute @s minecraft:generic.attack_damage modifier add 1-0-4-0-2 dog_damage 2 add
execute as @a[tag=hunter,tag=officer,predicate=general:uuid_search] run scoreboard players set @s dogDamageDuration 40 