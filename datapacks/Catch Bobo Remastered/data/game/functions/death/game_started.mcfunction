tag @s add spectator
gamemode spectator
tp @s[team=Hunters] @r[team=Hunters,gamemode=!spectator]
tp @s[team=Orangutans] @r[team=Orangutans,gamemode=!spectator]

#clears effects
	function general:clear_effects

#visual and sound
	execute at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 1 0
	execute run title @s times 20 80 60
	execute run title @s title {"text":"YOU DIED","bold":true,"italic":true,"color":"dark_red"}

#respawn timer
	scoreboard players operation @s[team=Hunters] respawnTimer = .hunterRespawnTimer gameStats
	scoreboard players operation @s[team=Orangutans] respawnTimer = .orangutanRespawnTimer gameStats