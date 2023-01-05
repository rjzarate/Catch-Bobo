scoreboard players set @s playTime 0
execute unless score constant gameInProgress matches 1..2 unless score constant gameStarted matches 1 run function cb:general/join/lobby
execute unless score constant gameInProgress matches 1..2 if score constant gameStarted matches 1 unless score constant gamePickingC matches 1 run function cb:general/join/started
execute unless score constant gameInProgress matches 1..2 if score constant gameStarted matches 1 if score constant gamePickingC matches 1 run function cb:general/join/late
execute if score constant gameInProgress matches 1..2 unless score @s gameID = id gameID run function cb:general/join/midgame
execute if score constant gameInProgress matches 1..2 if score @s gameID = id gameID run function cb:general/join/rejoin

scoreboard players reset @s leaveGame