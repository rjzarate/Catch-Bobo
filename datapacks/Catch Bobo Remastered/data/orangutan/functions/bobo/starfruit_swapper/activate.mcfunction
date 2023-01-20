function general:get_stats
#change model to inactive
	function general:animate/add/selected_item

#find the teleporter and teleportee
tag @s add teleporter
execute unless predicate general:is_sneaking if entity @a[tag=hunter,gamemode=!spectator] run tag @r[tag=hunter,gamemode=!spectator] add teleportee
execute if predicate general:is_sneaking if entity @a[tag=orangutan,tag=!teleporter,gamemode=!spectator] run tag @p[tag=orangutan,tag=!teleporter,gamemode=!spectator] add teleportee

#removes 1 kill
execute unless predicate general:is_sneaking if entity @a[tag=hunter,gamemode=!spectator] run scoreboard players remove @s starfruitSwapperTangerineTeleporter 1
execute if predicate general:is_sneaking if entity @a[tag=orangutan,tag=!teleporter,gamemode=!spectator] run scoreboard players remove @s starfruitSwapperTangerineTeleporter 1

##find a good way to tell Bobo that there are no hunters/orangutans to teleport to
#execute unless predicate general:is_sneaking unless entity @a[tag=hunter,gamemode=!spectator] run say failed to swap hunter
#execute if predicate general:is_sneaking unless entity @a[tag=orangutan,tag=!teleporter,gamemode=!spectator] run say failed to swap teammate

#summon minecraft:armor stands for the two people's position and rotation
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teleport","teleporter"]}
execute at @p[tag=teleportee] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["teleport","teleportee"]}
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=teleporter] Rotation set from entity @s Rotation 
data modify entity @e[type=minecraft:armor_stand,limit=1,sort=nearest,tag=teleportee] Rotation set from entity @p[tag=teleportee] Rotation

#give effects if they are a hunter
scoreboard players operation .fireResistance stats *= #20 constant
scoreboard players operation .resistance2 stats *= #20 constant
execute as @p[tag=hunter,tag=teleportee] run scoreboard players operation @s fireResistance = @s fireResistance
execute as @p[tag=hunter,tag=teleportee] run scoreboard players operation @s resistance2 = @s resistance2
execute as @p[tag=hunter,tag=teleportee] if score @s fireResistance < .fireResistance stats run scoreboard players operation @s fireResistance += .fireResistance stats
execute as @p[tag=hunter,tag=teleportee] if score @s resistance2 < .resistance2 stats run scoreboard players operation @s resistance2 += .resistance2 stats

#teleport
execute if entity @p[tag=teleportee] run schedule function orangutan:bobo/starfruit_swapper/teleport 2t
schedule function orangutan:bobo/starfruit_swapper/remove_tags 2t