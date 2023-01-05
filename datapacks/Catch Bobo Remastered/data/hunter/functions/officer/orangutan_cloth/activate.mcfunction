function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation .duration stats *= #20 constant
scoreboard players operation @s orangutanClothCD = .cooldown stats
scoreboard players operation @s orangutanClothCD += .duration stats
scoreboard players operation @s orangutanClothDuration = .duration stats

#strength to dog
	execute store result score .dogStrength1 stats run data get storage minecraft:stats tag.dogStrength1
	scoreboard players operation .dogStrength1 stats *= #20 constant
	execute as @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run scoreboard players operation @s strength1 = @s strength1
	execute as @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] if score @s strength1 < .dogStrength1 stats run scoreboard players operation @s strength1 = .dogStrength1 stats

#summon magma_cube for tracking
	execute at @s run summon minecraft:magma_cube ~ ~ ~ {Tags:["tracking","new"],Silent:1b,NoAI:1b,Size:0,ActiveEffects:[{Id:11,Amplifier:4b,Duration:20000000,ShowParticles:0b},{Id:14,Amplifier:0b,Duration:20000000,ShowParticles:0b}]}
	scoreboard players operation @e[type=minecraft:magma_cube,tag=tracking,tag=new] uuidLink = @s uuid
	tag @e[type=minecraft:magma_cube,tag=tracking,tag=new] remove new

#sound
	execute at @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] run playsound minecraft:entity.wolf.growl hostile @a ~ ~ ~ 1.5 1

