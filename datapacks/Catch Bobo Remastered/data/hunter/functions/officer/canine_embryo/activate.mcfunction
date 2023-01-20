function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s canineEmbryoCD = .cooldown stats

scoreboard players operation .search uuid = @s uuid
#adds grayscale
	execute store result score #slot temp run data get entity @s Inventory[{tag:{Tags:["canineEmbryo"]}}].Slot
	function general:animate/add/directory

#dog
	summon minecraft:wolf ~ ~ ~ {Tags:["dog","hunter","timeStoppable","new"],PersistenceRequired:1b,Sitting:0b,CustomName:'{"text":"filler"}',Attributes:[{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:0.001},{Name:generic.attack_damage,Base:1},{Name:generic.armor,Base:1},{Name:generic.follow_range,Base:300}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:depth_strider",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0,Operation:0,UUID:[I;1727431149,-678215306,-1703090537,1938023730]}]}},{},{},{}]}
	execute as @e[type=minecraft:wolf,tag=dog,tag=new] at @s run function hunter:officer/canine_embryo/dog
	tag @e[type=minecraft:wolf,tag=dog,tag=new] remove new

#sound and visual
	playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 0.75 1

