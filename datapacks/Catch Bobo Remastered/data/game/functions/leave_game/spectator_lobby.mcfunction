#game counter
	scoreboard players operation @s gameCounter = .game gameCounter

#join team
	team join Spectators @s

#teleports
	tp @s[team=Spectators] -157 61 26 -90 0

#clears effects and modifiers
	clear @s
	function general:clear_abilities
	function general:clear_effects
	function general:clear_modifiers

#resets ff
	scoreboard players reset @s ff

#removes tags
	function general:clear_tags
	tag @s add spectator

#bossbar
	bossbar set minecraft:timer players @s