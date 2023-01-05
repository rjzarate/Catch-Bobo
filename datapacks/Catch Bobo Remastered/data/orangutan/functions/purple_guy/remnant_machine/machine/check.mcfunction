#removes lifespan
	scoreboard players remove @s[tag=!timeStoppee] remnantMachineLifespan 1
	execute if score @s remnantMachineLifespan matches ..0 run kill @s

#generates animatronic
	scoreboard players add @s[tag=!timeStoppee] remnantMachineGeneration 1
	execute if score @s remnantMachineGeneration >= .animatronicGenerationSpeed remnantMachineStats run function orangutan:purple_guy/remnant_machine/machine/animatronic/check


#no absorption = no health
	execute if predicate general:no_absorption run kill @s