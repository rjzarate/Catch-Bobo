##bobo just has to hide and survive after collecting 1 fruit, bobo does not glow
	##one fruit needed to collect, doesn't glow when collecting fruits, hiding timer increased, game timer decreased, end timer increased, bobo does not glow during end timer
		#timer until hunters are released
	scoreboard players set .hidingTimer gameStats 1200
		#30 min timer; timer till hunters win by default
	scoreboard players set .gameTimer gameStats 6000
		#how many fruits bobo needs to collect to reach end game
	scoreboard players set .fruitRequirement gameStats 1
		#how many fruits are on the map
	scoreboard players set .fruitsOnField gameStats 5
		#if the fruits glow
	scoreboard players set .fruitGlowing gameStats 0
		#if collecting a fruit gives glowing
	scoreboard players set .fruitGivesGlowing gameStats 1
		#after collecting all fruits, how long bobo has to survive to win 
	scoreboard players set .endTimer gameStats 12000
		#if bobo glows after collecting all fruits
	scoreboard players set .endGlowing gameStats 0
		#respawn timer for hunters
	scoreboard players set .hunterRespawnTimer gameStats 500
		#respawn timer for orangutans
	scoreboard players set .orangutanRespawnTimer gameStats 1200
		#how much damage bobo can take before taking permanent damage
	scoreboard players set .boboPermanentDamage gameStats 100