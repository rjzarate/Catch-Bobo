scoreboard players remove @s respawnTimer 1

#checks whether they are near a hunter
	execute unless entity @a[team=Hunters,gamemode=!spectator,distance=..6] run tp @s @p[team=Hunters,gamemode=!spectator]
#check whether they are in a block
	execute anchored eyes unless block ^ ^ ^ #general:wallbangables run scoreboard players set @s blindness 2


execute unless score @s respawnTimer matches 1.. if entity @s[team=Hunters] run function game:respawn/hunter