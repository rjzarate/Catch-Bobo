##bobo doesn't glow when collecting fruits
	##has to collect more fruits, end timer is shorter, bobo slighty gets permanent damage easier
		#timer until hunters are released
	scoreboard players set .hidingTimer gameStats 900
		#30 min timer; timer till hunters win by default
	scoreboard players set .gameTimer gameStats 24000
		#how many fruits bobo needs to collect to reach end game
	scoreboard players set .fruitRequirement gameStats 30
		#how many fruits are on the map
	scoreboard players set .fruitsOnField gameStats 35
		#if the fruits glow
	scoreboard players set .fruitGlowing gameStats 0
		#if collecting a fruit gives glowing
	scoreboard players set .fruitGivesGlowing gameStats 0
		#after collecting all fruits, how long bobo has to survive to win 
	scoreboard players set .endTimer gameStats 1200
		#if bobo glows after collecting all fruits
	scoreboard players set .endGlowing gameStats 1
		#respawn timer for hunters
	scoreboard players set .hunterRespawnTimer gameStats 500
		#respawn timer for orangutans
	scoreboard players set .orangutanRespawnTimer gameStats 1200
		#how much damage bobo can take before taking permanent damage
	scoreboard players set .boboPermanentDamage gameStats 50