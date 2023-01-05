function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s dogWhistleCD = .cooldown stats
scoreboard players operation @s dogWhistleCD += .duration stats
scoreboard players operation @s dogWhistleDuration = .duration stats

scoreboard players operation .slowness5 stats *= #20 constant
scoreboard players operation .weakness1 stats *= #20 constant
execute store result score .dogSpeed stats run data get storage minecraft:stats tag.dogSpeed
scoreboard players operation .dogSpeed stats *= #20 constant

#dog
	execute as @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] at @s run function hunter:officer/dog_whistle/dog

#sound and visual
	execute anchored eyes positioned ^ ^ ^ run particle minecraft:shriek 2 ^ ^ ^0.1 0 0 0 1 20 normal
	playsound minecraft:block.bell.use player @a ~ ~ ~ 2 2