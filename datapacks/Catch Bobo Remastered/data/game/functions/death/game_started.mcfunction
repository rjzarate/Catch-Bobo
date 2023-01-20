tag @s add spectator
gamemode spectator
tp @s[tag=hunter] @r[tag=hunter,gamemode=!spectator]
tp @s[tag=orangutan] @r[tag=orangutan,gamemode=!spectator]

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
	scoreboard players operation @s[tag=hunter] respawnTimer = .hunterRespawnTimer gameStats
	scoreboard players operation @s[tag=orangutan] respawnTimer = .orangutanRespawnTimer gameStats

#if hunter, gives bobo
	execute if entity @s[tag=hunter] run scoreboard players add @a[tag=orangutan,tag=bobo] starfruitSwapperTangerineTeleporter 1
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run data modify storage minecraft:inventory Inventory set from entity @s Inventory
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["starfruitSwapper"]}}].Slot
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["starfruitSwapper"]}}].Slot
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run execute store success score #hasItem temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["tangerineTeleporter"]}}].Slot
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run execute if score #hasItem temp matches 1 store result score #slot temp run data get storage minecraft:inventory Inventory[{tag:{Tags:["tangerineTeleporter"]}}].Slot
	execute if entity @s[tag=hunter] as @a[tag=orangutan,tag=bobo] run function general:animate/remove/directory



#if bobo, hunters win
	execute if entity @s[tag=orangutan,tag=bobo] run function game:win/hunters