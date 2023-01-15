scoreboard players remove .gameTimer game 1




#if bobo is near a fruit
	execute as @a[team=Orangutan,tag=bobo,gamemode=!spectator] at @s if entity @e[type=minecraft:item,tag=fruit,distance=..2] run function game:fruit/collect

#if game time is 0, hunters win
	execute unless score .gameTimer game matches 1.. run function game:win/hunters
