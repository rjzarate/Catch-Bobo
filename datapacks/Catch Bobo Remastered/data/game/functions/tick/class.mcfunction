#tag so they cannot use abilities
	tag @a add displayOnly


#checks if there is a player with the choosingClass tag there is a player not in the ready zones
	#if there isnt, start hiding phase
	execute unless entity @a[tag=choosingClass] positioned -99 59 35 align xyz unless entity @a[dx=16,dy=3,dz=19] positioned -98 59 -11 align xyz unless entity @a[dx=8,dy=3,dz=10] run function game:start/hiding