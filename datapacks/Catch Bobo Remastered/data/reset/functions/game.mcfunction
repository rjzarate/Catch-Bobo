#to all players
	execute as @a run function general:clear_abilities
	execute as @a run function general:clear_effects
	execute as @a run function general:clear_modifiers
	execute as @a run function general:clear_tags
	execute as @a run attribute @s minecraft:generic.max_health base set 20
	execute as @a run attribute @s minecraft:generic.armor base set 0
	execute as @a run attribute @s minecraft:generic.attack_damage base set 1
	execute as @a run attribute @s minecraft:generic.attack_speed base set 4
	execute as @a run attribute @s minecraft:generic.movement_speed base set 0.10000000149011612
	spawnpoint @a 0 53 0
	clear @a
	effect clear @a
	gamemode adventure @a
	team join Lobby @a
	tp @a 0 54 0

#world border and bossbars
	worldborder set 10000


#scoreboards 
	scoreboard players set .gameStart game 0
	scoreboard players set .teamPhase game 0
	scoreboard players set .classPhase game 0
	scoreboard players set .hidingPhase game 0
	scoreboard players set .gamePhase game 0
	scoreboard players set .endPhase game 0
	scoreboard players set .winPhase game 0

#glass
	fill -67 37 -131 -67 46 -130 minecraft:light_blue_stained_glass
	fill -66 37 -130 -66 46 -129 minecraft:light_blue_stained_glass
	fill -65 37 -129 -65 46 -128 minecraft:light_blue_stained_glass
	fill -64 37 -128 -64 46 -127 minecraft:light_blue_stained_glass
	fill -63 37 -127 -63 46 -126 minecraft:light_blue_stained_glass
	fill -62 37 -126 -62 46 -126 minecraft:light_blue_stained_glass
	fill -12 53 1 -12 55 -1 air

