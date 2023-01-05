scoreboard players reset constant hunterCount
scoreboard players reset constant hunterNoDogCount

execute as @e[type=wolf,tag=dog,team=Hunters] run scoreboard players add constant hunterCount 1
execute as @a[team=Hunters,gamemode=!spectator,tag=!stun] run scoreboard players add constant hunterCount 1
execute as @a[team=Hunters,gamemode=!spectator,tag=!stun] run scoreboard players add constant hunterNoDogCount 1

scoreboard players operation constant hunterCount.5 = constant hunterCount
scoreboard players operation constant hunterCount.5 /= constant 2