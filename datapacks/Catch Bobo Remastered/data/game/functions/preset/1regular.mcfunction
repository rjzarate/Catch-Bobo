		#timer until hunters are released
	scoreboard players set .hidingTimer gameStats 1200
		#30 min timer; timer till hunters win by default
	scoreboard players set .gameTimer gameStats 36000
		#how many fruits bobo needs to collect to reach end game
	scoreboard players set .fruitRequirement gameStats 15
		#how many fruits are on the map
	scoreboard players set .fruitsOnField gameStats 25
		#if the fruits glow
	scoreboard players set .fruitGlowing gameStats 1
		#if collecting a fruit gives glowing
	scoreboard players set .fruitGivesGlowing gameStats 1
		#after collecting all fruits, how long bobo has to survive to win 
	scoreboard players set .endTimer gameStats 1200
		#if bobo glows after collecting all fruits
	scoreboard players set .endGlowing gameStats 1
		#respawn timer for hunters
	scoreboard players set .hunterRespawnTimer gameStats 600
		#respawn timer for orangutans
	scoreboard players set .orangutanRespawnTimer gameStats 1200