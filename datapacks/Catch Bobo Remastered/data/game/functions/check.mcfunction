#checks if all players are ready
	tag @a remove ready
	execute positioned -3 53 -17 align xyz as @a[dx=6,dy=3,dz=5] run tag @s add ready
	execute unless entity @a[tag=!ready] if entity @a[tag=ready] run function game:start/team

#checks if there is a players are in the ready zone
	#execute positioned -3 53 -17 align xyz if entity @a[dx=6,dy=3,dz=5] run function game:start/team