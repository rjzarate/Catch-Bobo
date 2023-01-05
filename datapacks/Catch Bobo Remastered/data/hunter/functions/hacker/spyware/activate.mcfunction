scoreboard players operation .range stats *= #2 constant
scoreboard players operation #range temp = .range stats

scoreboard players operation @s battery -= .batteryUsage stats

playsound minecraft:block.glass.break player @a ~ ~ ~ 1 2

execute anchored eyes positioned ^ ^ ^1 run tag @a[team=Orangutans,distance=..100,sort=random,limit=1,tag=!hit,gamemode=!spectator] add hit


tag @s add shot
execute at @s anchored eyes positioned ^ ^ ^1 if entity @a[team=Orangutans,distance=..100,tag=hit,gamemode=!spectator] facing entity @a[team=Orangutans,distance=..100,tag=hit,gamemode=!spectator] eyes run function hunter:hacker/spyware/raycast
tag @s remove shot

execute at @s anchored eyes positioned ^ ^ ^1 unless entity @a[team=Orangutans,distance=..100,tag=hit,gamemode=!spectator] run tellraw @s ["",{"text":"No nearby ","bold":true},{"text":"Orangutans","bold":true,"color":"gold"},{"text":" detected.","bold":true}]


tag @a remove hit