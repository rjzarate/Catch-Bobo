#removes oldest for other colored vents of same owner
scoreboard players operation .search uuidLink = @s uuidLink
execute if entity @s[tag=red] run scoreboard players remove @e[type=minecraft:turtle,tag=vent,scores={ventOldest=2},predicate=general:uuid_link_search,tag=red] ventOldest 1
execute if entity @s[tag=blue] run scoreboard players remove @e[type=minecraft:turtle,tag=vent,scores={ventOldest=2},predicate=general:uuid_link_search,tag=blue] ventOldest 1
execute if entity @s[tag=yellow] run scoreboard players remove @e[type=minecraft:turtle,tag=vent,scores={ventOldest=2},predicate=general:uuid_link_search,tag=yellow] ventOldest 1
execute if entity @s[tag=green] run scoreboard players remove @e[type=minecraft:turtle,tag=vent,scores={ventOldest=2},predicate=general:uuid_link_search,tag=green] ventOldest 1

#particles and sound
playsound minecraft:block.anvil.destroy player @a ~ ~ ~ 0.5 1.5
particle minecraft:block minecraft:anvil ~ ~0.4 ~ 0.5 0.2 0.5 0 10

kill @s