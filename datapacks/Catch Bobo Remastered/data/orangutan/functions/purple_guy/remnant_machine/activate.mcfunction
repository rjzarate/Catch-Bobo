function general:get_stats
scoreboard players remove @s remnantMachineAmmo 1
execute if score @s remnantMachineAmmo < .maxAmmo remnantMachineStats unless score @s remnantMachineCD matches 1.. run scoreboard players operation @s remnantMachineCD += .cooldown20t remnantMachineStats

#creates villager which is the machine
	execute align xz run summon minecraft:villager ~0.5 ~ ~0.5 {Team:"Orangutans",Silent:1b,PersistenceRequired:1b,NoAI:1b,Health:1000f,AbsorptionAmount:1f,Tags:["timeStoppable","remnantMachine","new"]}

scoreboard players operation .search uuidLink = @s uuid

#sets villager
	execute as @e[type=minecraft:villager,tag=remnantMachine,tag=new] run function orangutan:purple_guy/remnant_machine/machine/set
	tag @e[type=minecraft:villager,tag=remnantMachine,tag=new] remove new

#sound and visual
	playsound minecraft:entity.ghast.shoot player @a ~ ~ ~ 1 0.5
	execute align xz run particle minecraft:smoke ~ ~1 ~ 0.2 0.5 0.2 0.1 10