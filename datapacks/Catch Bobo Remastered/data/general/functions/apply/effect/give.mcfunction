#effects
execute if score @s blindness matches 1.. run effect give @s minecraft:blindness 2 0 false
execute if score @s darkness matches 1.. run effect give @s minecraft:darkness 1 0 false
execute if score @s dolphinsGrace matches 1.. run effect give @s minecraft:dolphins_grace 1 0 false
execute if score @s fireResistance matches 1.. run effect give @s minecraft:fire_resistance 1 0 false
execute if score @s glowing matches 1.. run effect give @s minecraft:glowing 1 0 false
execute if score @s haste1 matches 1.. run effect give @s minecraft:haste 1 0 false
execute if score @s haste2 matches 1.. run effect give @s minecraft:haste 1 1 false
execute if score @s haste3 matches 1.. run effect give @s minecraft:haste 1 2 false
execute if score @s haste4 matches 1.. run effect give @s minecraft:haste 1 3 false
execute if score @s haste5 matches 1.. run effect give @s minecraft:haste 1 4 false
execute if score @s invisibility matches 1.. run effect give @s minecraft:invisibility 1 0 false
execute if score @s jumpBoost1 matches 1.. run effect give @s minecraft:jump_boost 1 0 false
execute if score @s jumpBoost2 matches 1.. run effect give @s minecraft:jump_boost 1 1 false
execute if score @s jumpBoost3 matches 1.. run effect give @s minecraft:jump_boost 1 2 false
execute if score @s jumpBoost4 matches 1.. run effect give @s minecraft:jump_boost 1 3 false
execute if score @s jumpBoost5 matches 1.. run effect give @s minecraft:jump_boost 1 4 false
execute if score @s jumpBoost128 matches 1.. run effect give @s minecraft:jump_boost 1 128 false
execute if score @s levitation1 matches 1.. run effect give @s minecraft:levitation 1 0 false
execute if score @s levitation11 matches 1.. run effect give @s minecraft:levitation 1 10 false
execute if score @s levitation15 matches 1.. run effect give @s minecraft:levitation 1 14 false
execute if score @s luck50 matches 1.. run effect give @s minecraft:luck 1 49 false
execute if score @s luck100 matches 1.. run effect give @s minecraft:luck 1 99 false
execute if score @s[tag=!hunterTeamImmunity] luck50 matches 1.. run tag @s add hunterTeamImmunity
execute if score @s[tag=!orangutanTeamImmunity] luck100 matches 1.. run tag @s add orangutanTeamImmunity
execute if score @s miningFatigue1 matches 1.. run effect give @s minecraft:mining_fatigue 1 0 false
execute if score @s miningFatigue2 matches 1.. run effect give @s minecraft:mining_fatigue 1 1 false
execute if score @s miningFatigue3 matches 1.. run effect give @s minecraft:mining_fatigue 1 2 false
execute if score @s miningFatigue4 matches 1.. run effect give @s minecraft:mining_fatigue 1 3 false
execute if score @s miningFatigue5 matches 1.. run effect give @s minecraft:mining_fatigue 1 4 false
execute if score @s nausea matches 1.. run effect give @s minecraft:nausea 4 0 false
execute if score @s resistance1 matches 1.. run effect give @s minecraft:resistance 1 0 false
execute if score @s resistance2 matches 1.. run effect give @s minecraft:resistance 1 1 false
execute if score @s resistance3 matches 1.. run effect give @s minecraft:resistance 1 2 false
execute if score @s resistance4 matches 1.. run effect give @s minecraft:resistance 1 3 false
execute if score @s resistance5 matches 1.. run effect give @s minecraft:resistance 1 4 false
execute if score @s slowFalling matches 1.. run effect give @s minecraft:slow_falling 1 0 false
execute if score @s slowness1 matches 1.. run effect give @s minecraft:slowness 1 0 false
execute if score @s slowness2 matches 1.. run effect give @s minecraft:slowness 1 1 false
execute if score @s slowness3 matches 1.. run effect give @s minecraft:slowness 1 2 false
execute if score @s slowness4 matches 1.. run effect give @s minecraft:slowness 1 3 false
execute if score @s slowness5 matches 1.. run effect give @s minecraft:slowness 1 4 false
execute if score @s slowness10 matches 1.. run effect give @s minecraft:slowness 1 9 false
execute if score @s slowness100 matches 1.. run effect give @s minecraft:slowness 1 99 false
execute if score @s strength1 matches 1.. run effect give @s minecraft:strength 1 0 false
execute if score @s strength2 matches 1.. run effect give @s minecraft:strength 1 1 false
execute if score @s strength3 matches 1.. run effect give @s minecraft:strength 1 2 false
execute if score @s strength4 matches 1.. run effect give @s minecraft:strength 1 3 false
execute if score @s strength5 matches 1.. run effect give @s minecraft:strength 1 4 false
execute if score @s speed1 matches 1.. run effect give @s minecraft:speed 1 0 false
execute if score @s speed2 matches 1.. run effect give @s minecraft:speed 1 1 false
execute if score @s speed3 matches 1.. run effect give @s minecraft:speed 1 2 false
execute if score @s speed4 matches 1.. run effect give @s minecraft:speed 1 3 false
execute if score @s speed5 matches 1.. run effect give @s minecraft:speed 1 4 false
execute if score @s waterBreathing matches 1.. run effect give @s minecraft:water_breathing 1 0 false
execute if score @s weakness1 matches 1.. run effect give @s minecraft:weakness 1 0 false
execute if score @s weakness2 matches 1.. run effect give @s minecraft:weakness 1 1 false
execute if score @s weakness3 matches 1.. run effect give @s minecraft:weakness 1 2 false
execute if score @s weakness4 matches 1.. run effect give @s minecraft:weakness 1 3 false
execute if score @s weakness5 matches 1.. run effect give @s minecraft:weakness 1 4 false
execute if score @s weakness100 matches 1.. run effect give @s minecraft:weakness 1 99 false

#effects in combat
execute if score @s blindness matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s darkness matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s nausea matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness1 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness2 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness3 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness4 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness5 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s slowness10 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness1 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness2 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness3 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness4 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness5 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat
execute if score @s weakness100 matches 1.. run scoreboard players operation @s healingInCombat = .duration healingInCombat

#effects over time
scoreboard players reset .regenerationChange regeneration
execute if score @s regeneration1 matches 1.. run scoreboard players add .regenerationChange regeneration 2
execute if score @s regeneration2 matches 1.. run scoreboard players add .regenerationChange regeneration 3
execute if score @s regeneration3 matches 1.. run scoreboard players add .regenerationChange regeneration 5
execute if score @s regeneration4 matches 1.. run scoreboard players add .regenerationChange regeneration 8
scoreboard players operation @s regeneration += .regenerationChange regeneration
execute if score @s regeneration matches 1.. run effect give @s minecraft:regeneration 1 0 false
scoreboard players operation @s[tag=timeStoppee] regeneration -= .regenerationChange regeneration

scoreboard players reset .poisonChange poison
execute if score @s poison1 matches 1.. run scoreboard players add .poisonChange poison 2
execute if score @s poison2 matches 1.. run scoreboard players add .poisonChange poison 3
execute if score @s poison3 matches 1.. run scoreboard players add .poisonChange poison 4
execute if score @s poison4 matches 1.. run scoreboard players add .poisonChange poison 5
execute if score @s poison5 matches 1.. run scoreboard players add .poisonChange poison 8
scoreboard players operation @s poison += .poisonChange poison
execute if score @s poison matches 1.. run effect give @s minecraft:poison 1 0 false
scoreboard players operation @s[tag=timeStoppee] poison -= .poisonChange poison

scoreboard players reset .witherChange wither
execute if score @s wither1 matches 1.. run scoreboard players add .witherChange wither 2
execute if score @s wither2 matches 1.. run scoreboard players add .witherChange wither 3
execute if score @s wither3 matches 1.. run scoreboard players add .witherChange wither 4
execute if score @s wither4 matches 1.. run scoreboard players add .witherChange wither 5
execute if score @s wither5 matches 1.. run scoreboard players add .witherChange wither 8
scoreboard players operation @s wither += .witherChange wither
execute if score @s wither matches 1.. run effect give @s minecraft:wither 1 0 false
scoreboard players operation @s[tag=timeStoppee] wither -= .witherChange wither