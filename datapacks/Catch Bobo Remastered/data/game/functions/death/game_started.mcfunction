tag @s add spectator
gamemode spectator
tp @s[team=Hunters] @r[team=Hunters,gamemode=!spectator]
tp @s[team=Orangutans] @r[team=Orangutans,gamemode=!spectator]

#if mori and geundoowun activated, gives geundoowun back
	execute if score @s[tag=mori] geundoowunDuration matches 1.. run function hunter:mori/geundoowun/give_geundoowun

#clears effects
	function general:clear_effects
	function general:clear_modifiers
	function general:clear_durations

#visual and sound
	execute at @s run playsound minecraft:ambient.cave player @s ~ ~ ~ 1 0
	execute run title @s times 20 80 60
	execute run title @s title {"text":"YOU DIED","bold":true,"italic":true,"color":"dark_red"}

#respawn timer
	scoreboard players operation @s[team=Hunters] respawnTimer = .hunterRespawnTimer gameStats
	scoreboard players operation @s[team=Orangutans] respawnTimer = .orangutanRespawnTimer gameStats

#if hunter, gives bobo
	execute if entity @s[team=Hunters] run scoreboard players add @a[team=Orangutans,tag=bobo] starfruitSwapperTangerineTeleporter 1
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["starfruitSwapper"]}}].Slot
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["starfruitSwapper"]}}].Slot
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["tangerineTeleporter"]}}].Slot
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["tangerineTeleporter"]}}].Slot
	execute if entity @s[team=Hunters] as @a[team=Orangutans,tag=bobo] run function general:animate/remove/directory



#if bobo, hunters win
	execute if entity @s[team=Orangutans,tag=bobo] run function game:win/hunters