fill 96 22 -237 92 23 -236 air destroy

#teleports back to your last position
	scoreboard players operation .search uuidLink = @s uuid
	tp @s @e[type=minecraft:area_effect_cloud,tag=reportBody,predicate=general:uuid_link_search,sort=furthest,limit=1]
	kill @e[type=area_effect_cloud,tag=reportBody]

#stops natural healing
	tag @s remove noNaturalHealing