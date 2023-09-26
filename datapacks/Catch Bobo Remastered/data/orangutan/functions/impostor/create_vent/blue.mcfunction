function general:get_stats
scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s createVentCD = .cooldown stats
execute store result score #ventCooldownIncrease temp run data get storage minecraft:stats tag.ventCooldownIncrease
scoreboard players operation #ventCooldownIncrease temp *= #20 constant
scoreboard players operation @s ventCD = #ventCooldownIncrease temp

#particles and sound
	particle minecraft:poof ~ ~ ~ 0 0 0 0 5
	playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.5 2

#creates turtle with lifespan, proper health, and uuid
	execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:turtle ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,AbsorptionAmount:1f,Tags:["vent","blue","new","timeStoppable"],Attributes:[{Name:generic.max_health,Base:1000}],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2000000,show_particles:0b}]}
	execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["vent","blue","visual"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:111}}]}
	scoreboard players operation .ventLifespan stats *= #20 constant
	scoreboard players operation @e[type=minecraft:turtle,tag=blue,tag=new] ventLifespan = .ventLifespan stats
	execute store result entity @e[type=minecraft:turtle,tag=blue,tag=new,limit=1] AbsorptionAmount float 1 run scoreboard players get .ventHealth stats
	scoreboard players operation @e[type=minecraft:turtle,tag=blue,tag=new] uuidLink = @s uuid

	tag @e[type=minecraft:turtle,tag=blue,tag=new] remove new

#adds oldest scoreboard to all turtles and kills turtle if too old
	scoreboard players operation .search uuidLink = @s uuid
	scoreboard players add @e[type=minecraft:turtle,tag=blue,predicate=general:uuid_link_search] ventOldest 1
	kill @e[type=minecraft:turtle,tag=blue,scores={ventOldest=3..}]