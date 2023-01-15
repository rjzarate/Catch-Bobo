scoreboard players remove @s respawnTimer 1

#checks whether they are near a orangutan
	execute unless entity @a[team=Orangutans,gamemode=!spectator,distance=..6] run tp @s @p[team=Orangutans,gamemode=!spectator]
#check whether they are in a block
	execute anchored eyes unless block ^ ^ ^ #general:wallbangables run scoreboard players set @s blindness 2


execute unless score @s respawnTimer matches 1.. if entity @s[team=Orangutans] run function game:respawn/orangutan