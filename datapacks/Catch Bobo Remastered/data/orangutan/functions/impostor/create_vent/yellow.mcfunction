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
	execute align xz positioned ~0.5 ~ ~0.5 run summon minecraft:turtle ~ ~ ~ {Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,AbsorptionAmount:1f,Tags:["vent","yellow","new","timeStoppable"],Attributes:[{Name:generic.max_health,Base:1000}],ActiveEffects:[{Id:14,Amplifier:0b,Duration:2000000,ShowParticles:0b}]}
	execute align xz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["vent","yellow","visual"],Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:ender_eye",Count:1b,tag:{CustomModelData:112}}]}
	scoreboard players operation .ventLifespan stats *= #20 constant
	scoreboard players operation @e[type=minecraft:turtle,tag=yellow,tag=new] ventLifespan = .ventLifespan stats
	execute store result entity @e[type=minecraft:turtle,tag=yellow,tag=new,limit=1] AbsorptionAmount float 1 run scoreboard players get .ventHealth stats
	scoreboard players operation @e[type=minecraft:turtle,tag=yellow,tag=new] uuidLink = @s uuid

	tag @e[type=minecraft:turtle,tag=yellow,tag=new] remove new

#adds oldest scoreboard to all turtles and kills turtle if too old
	scoreboard players operation .search uuidLink = @s uuid
	scoreboard players add @e[type=minecraft:turtle,tag=yellow,predicate=general:uuid_link_search] ventOldest 1
	kill @e[type=minecraft:turtle,tag=yellow,scores={ventOldest=3..}]