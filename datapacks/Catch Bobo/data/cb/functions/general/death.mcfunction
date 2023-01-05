clear @s
execute at @e[type=wolf,tag=dog] if score @s UUID0 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=wolf,tag=dog,sort=nearest,limit=1] Owner3 as @e[type=wolf,tag=dog,sort=nearest,limit=1] run kill @s
execute at @e[type=husk,tag=starPlatinum] if score @s UUID0 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner0 if score @s UUID1 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner1 if score @s UUID2 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner2 if score @s UUID3 = @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] Owner3 as @e[type=husk,tag=starPlatinum,sort=nearest,limit=1] run kill @s
tp @s 96.0 70 -288.0 180 0
execute unless score constant gameInProgress matches 2 run effect give @s minecraft:blindness 11 0 true
execute unless score constant gameInProgress matches 2 at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 1 0
execute unless score constant gameInProgress matches 2 run title @s times 60 80 60
execute unless score constant gameInProgress matches 2 run title @s title {"text":"YOU DIED","bold":true,"italic":true,"color":"dark_red"}
gamemode spectator
scoreboard players set @s died 0