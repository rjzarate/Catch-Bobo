		#timer until hunters are released
	scoreboard players set .hidingTimer 1200
		#30 min timer; timer till hunters win by default
	scoreboard players set .timer gameStats 36000
		#how many fruits bobo needs to collect to reach end game
	scoreboard players set .fruitRequirement gameStats 15
		#how many fruits are on the map
	scoreboard players set .fruitsOnField gameStats 25
		#if the fruits glow
	scoreboard players set .fruitGlowing gameStats 1
		#if collecting a fruit gives glowing
	scoreboard players set .fruitGivesGlowing gameStats 1
		#after collecting all fruits, how long bobo has to survive to win 
	scoreboard players set .endTimer 1200
		#if bobo glows after collecting all fruits
	scoreboard players set .endGlowing 1
		#respawn timer for hunters
	scoreboard players set .hunterRespawnTimer 600
		#respawn timer for orangutans
	scoreboard players set .orangutanRespawnTimer 1200