#game counter
	scoreboard players operation @s gameCounter = .game gameCounter

#join team
	team join Spectators @s

#teleports
	tp @s[team=Spectators] @r[team=!Spectators]

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