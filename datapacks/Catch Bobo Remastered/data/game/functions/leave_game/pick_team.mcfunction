#game counter
	scoreboard players operation @s gameCounter = .game gameCounter

#teleports
	tp @s -99.5 59 23.5 -90 0

#clears effects and modifiers
	clear @s
	function general:clear_abilities
	function general:clear_effects
	function general:clear_modifiers

#removes tags
	function general:clear_tags
	tag @s add choosingClass

#resets ff
	scoreboard players reset @s ff

#tellraw and sound
	title @s times 0 100 20
	title @s subtitle {"text":"Stand on the corresponding color to choose.","color":"yellow","italic":true}
	title @s title {"text":"Choose Your Team!","bold":true,"color":"white"}
	tellraw @s ["",{"text":"\n"},{"text":"Choose Your Team!\n","bold":true,"color":"white"},{"text":"Stand on the corresponding color to choose.","color":"yellow","italic":true}]
	playsound minecraft:block.note_block.pling record @s -99.5 59 23.5 2 2