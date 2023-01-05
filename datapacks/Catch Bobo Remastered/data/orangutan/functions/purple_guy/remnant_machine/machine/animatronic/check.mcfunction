scoreboard players operation .search uuidLink = @s uuidLink

#gets the amount of animatronics linked 
	execute store result score #animatronics temp if entity @e[type=minecraft:zombie,tag=animatronic,predicate=general:uuid_link_search]
	execute store result score #remnantMachines temp if entity @e[type=minecraft:villager,tag=remnantMachine,predicate=general:uuid_link_search]
	scoreboard players operation #remnantMachines temp *= .maxAnimatronics remnantMachineStats

#summons if animatronics < (machines * max_animatronics)
	execute if score #animatronics temp < #remnantMachines temp at @s run function orangutan:purple_guy/remnant_machine/machine/animatronic/summon

#random to offset remnant machines
	scoreboard players set in math 2
	scoreboard players set in1 math 3
	function math:rng/range
	scoreboard players operation @s remnantMachineGeneration /= out math
