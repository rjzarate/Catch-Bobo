#checks if there is a player in the white concrete area. 
	#if there isn't, check if there is at least 1 player in orangutans and hunters space.
	#start class function if satisfied
	execute positioned -102 59 20 align xyz unless entity @a[dx=11,dy=4,dz=6] positioned -96 59 15 align xyz if entity @a[dx=4,dy=4,dz=4] positioned -96 58 27 align xyz if entity @a[dx=4,dy=4,dz=4] run function game:start/class


##single player testing
	#checks if there is a player in the white concrete area. 
	#if there isn't, starts class function if satisfied
		#execute positioned -102 59 20 align xyz unless entity @a[dx=11,dy=4,dz=6] run function game:start/class