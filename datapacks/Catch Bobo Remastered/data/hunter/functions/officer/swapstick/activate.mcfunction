function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s swapstickCD = .cooldown stats


#visuals and audio (where you are)
	particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
	playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.75 1.5
	execute at @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1] run particle minecraft:portal ~ ~ ~ .2 .75 .2 .3 20
	execute at @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Tags:["swapstick"]}


#teleports you to wolf then wolf to area effect cloud
	tp @s @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search,limit=1]
	tp @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search] ~ ~ ~ ~ ~

#audio (where you now are)
	execute at @e[type=minecraft:area_effect_cloud,tag=swapstick] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.75 1.5

	kill @e[type=minecraft:area_effect_cloud,tag=swapstick]