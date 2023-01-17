#execute if score @s blindness matches ..0 run effect clear @s minecraft:blindness
#execute if score @s darkness matches ..0 run effect clear @s minecraft:darkness
execute if score @s dolphinsGrace matches ..0 run effect clear @s minecraft:dolphins_grace
execute if score @s fireResistance matches ..0 run effect clear @s minecraft:fire_resistance
execute if score @s glowing matches ..0 run effect clear @s minecraft:glowing
scoreboard players reset .haste effectClear
scoreboard players operation .haste effectClear += @s haste1
scoreboard players operation .haste effectClear += @s haste2
scoreboard players operation .haste effectClear += @s haste3
scoreboard players operation .haste effectClear += @s haste4
scoreboard players operation .haste effectClear += @s haste5
execute if score .haste effectClear matches ..0 run effect clear @s minecraft:haste
execute if score @s invisibility matches ..0 run effect clear @s minecraft:invisibility
scoreboard players reset .jumpBoost effectClear
scoreboard players operation .jumpBoost effectClear += @s jumpBoost1
scoreboard players operation .jumpBoost effectClear += @s jumpBoost2
scoreboard players operation .jumpBoost effectClear += @s jumpBoost3
scoreboard players operation .jumpBoost effectClear += @s jumpBoost4
scoreboard players operation .jumpBoost effectClear += @s jumpBoost5
scoreboard players operation .jumpBoost effectClear += @s jumpBoost10
scoreboard players operation .jumpBoost effectClear += @s jumpBoost128
execute if score .jumpBoost effectClear matches ..0 run effect clear @s minecraft:jump_boost
scoreboard players reset .levitation effectClear
scoreboard players operation .levitation effectClear += @s levitation1
scoreboard players operation .levitation effectClear += @s levitation11
scoreboard players operation .levitation effectClear += @s levitation15
execute if score .levitation effectClear matches ..0 run effect clear @s minecraft:levitation
scoreboard players reset .luck effectClear
scoreboard players operation .luck effectClear += @s luck50
scoreboard players operation .luck effectClear += @s luck100
execute if score .luck effectClear matches ..0 run effect clear @s minecraft:luck
scoreboard players reset .miningFatigue effectClear
scoreboard players operation .miningFatigue effectClear += @s miningFatigue1
scoreboard players operation .miningFatigue effectClear += @s miningFatigue2
scoreboard players operation .miningFatigue effectClear += @s miningFatigue3
scoreboard players operation .miningFatigue effectClear += @s miningFatigue4
scoreboard players operation .miningFatigue effectClear += @s miningFatigue5
execute if score .miningFatigue effectClear matches ..0 run effect clear @s minecraft:mining_fatigue
#execute if score @s nausea matches ..0 run effect clear @s minecraft:nausea
scoreboard players reset .resistance effectClear
scoreboard players operation .resistance effectClear += @s resistance1
scoreboard players operation .resistance effectClear += @s resistance2
scoreboard players operation .resistance effectClear += @s resistance3
scoreboard players operation .resistance effectClear += @s resistance4
scoreboard players operation .resistance effectClear += @s resistance5
execute if score .resistance effectClear matches ..0 run effect clear @s minecraft:resistance
execute if score @s slowFalling matches ..0 run effect clear @s minecraft:slow_falling
scoreboard players reset .slowness effectClear
scoreboard players operation .slowness effectClear += @s slowness1
scoreboard players operation .slowness effectClear += @s slowness2
scoreboard players operation .slowness effectClear += @s slowness3
scoreboard players operation .slowness effectClear += @s slowness4
scoreboard players operation .slowness effectClear += @s slowness5
scoreboard players operation .slowness effectClear += @s slowness10
scoreboard players operation .slowness effectClear += @s slowness100
execute if score .slowness effectClear matches ..0 run effect clear @s minecraft:slowness
scoreboard players reset .strength effectClear
scoreboard players operation .strength effectClear += @s strength1
scoreboard players operation .strength effectClear += @s strength2
scoreboard players operation .strength effectClear += @s strength3
scoreboard players operation .strength effectClear += @s strength4
scoreboard players operation .strength effectClear += @s strength5
execute if score .strength effectClear matches ..0 run effect clear @s minecraft:strength
scoreboard players reset .speed effectClear
scoreboard players operation .speed effectClear += @s speed1
scoreboard players operation .speed effectClear += @s speed2
scoreboard players operation .speed effectClear += @s speed3
scoreboard players operation .speed effectClear += @s speed4
scoreboard players operation .speed effectClear += @s speed5
execute if score .speed effectClear matches ..0 run effect clear @s minecraft:speed
execute if score @s waterBreathing matches ..0 run effect clear @s minecraft:water_breathing
scoreboard players reset .weakness effectClear
scoreboard players operation .weakness effectClear += @s weakness1
scoreboard players operation .weakness effectClear += @s weakness2
scoreboard players operation .weakness effectClear += @s weakness3
scoreboard players operation .weakness effectClear += @s weakness4
scoreboard players operation .weakness effectClear += @s weakness5
scoreboard players operation .weakness effectClear += @s weakness100
execute if score .weakness effectClear matches ..0 run effect clear @s minecraft:weakness

#absorption weird /shrug
execute if score @s absorption matches ..0 run effect clear @s minecraft:absorption
scoreboard players reset .regeneration effectClear
scoreboard players operation .regeneration effectClear += @s regeneration1
scoreboard players operation .regeneration effectClear += @s regeneration2
scoreboard players operation .regeneration effectClear += @s regeneration3
scoreboard players operation .regeneration effectClear += @s regeneration4
##custom regeneration only lasts 1 second
#execute if score .regeneration effectClear matches ..0 run effect clear @s minecraft:regeneration
execute if score .regeneration effectClear matches ..0 run scoreboard players reset @s regeneration
scoreboard players reset .poison effectClear
scoreboard players operation .poison effectClear += @s poison1
scoreboard players operation .poison effectClear += @s poison2
scoreboard players operation .poison effectClear += @s poison3
scoreboard players operation .poison effectClear += @s poison4
scoreboard players operation .poison effectClear += @s poison5
##custom poison only lasts 1 second
#execute if score .poison effectClear matches ..0 run effect clear @s minecraft:poison
execute if score .poison effectClear matches ..0 run scoreboard players reset @s poison
scoreboard players reset .wither effectClear
scoreboard players operation .wither effectClear += @s wither1
scoreboard players operation .wither effectClear += @s wither2
scoreboard players operation .wither effectClear += @s wither3
scoreboard players operation .wither effectClear += @s wither4
scoreboard players operation .wither effectClear += @s wither5
##custom wither only lasts 1 second
#execute if score .wither effectClear matches ..0 run effect clear @s minecraft:wither
execute if score .wither effectClear matches ..0 run scoreboard players reset @s wither


execute if score @s blindness matches ..0 run scoreboard players reset @s blindness
execute if score @s darkness matches ..0 run scoreboard players reset @s darkness
execute if score @s dolphinsGrace matches ..0 run scoreboard players reset @s dolphinsGrace
execute if score @s fireResistance matches ..0 run scoreboard players reset @s fireResistance
execute if score @s glowing matches ..0 run scoreboard players reset @s glowing
execute if score @s haste1 matches ..0 run scoreboard players reset @s haste1
execute if score @s haste2 matches ..0 run scoreboard players reset @s haste2
execute if score @s haste3 matches ..0 run scoreboard players reset @s haste3
execute if score @s haste4 matches ..0 run scoreboard players reset @s haste4
execute if score @s haste5 matches ..0 run scoreboard players reset @s haste5
execute if score @s invisibility matches ..0 run scoreboard players reset @s invisibility
execute if score @s miningFatigue1 matches ..0 run scoreboard players reset @s miningFatigue1
execute if score @s miningFatigue2 matches ..0 run scoreboard players reset @s miningFatigue2
execute if score @s miningFatigue3 matches ..0 run scoreboard players reset @s miningFatigue3
execute if score @s miningFatigue4 matches ..0 run scoreboard players reset @s miningFatigue4
execute if score @s miningFatigue5 matches ..0 run scoreboard players reset @s miningFatigue5
execute if score @s nausea matches ..0 run scoreboard players reset @s nausea
execute if score @s jumpBoost1 matches ..0 run scoreboard players reset @s jumpBoost1
execute if score @s jumpBoost2 matches ..0 run scoreboard players reset @s jumpBoost2
execute if score @s jumpBoost3 matches ..0 run scoreboard players reset @s jumpBoost3
execute if score @s jumpBoost4 matches ..0 run scoreboard players reset @s jumpBoost4
execute if score @s jumpBoost5 matches ..0 run scoreboard players reset @s jumpBoost5
execute if score @s jumpBoost128 matches ..0 run scoreboard players reset @s jumpBoost128
execute if score @s luck50 matches ..0 run tag @s remove hunterTeamImmunity
execute if score @s luck100 matches ..0 run tag @s remove orangutanTeamImmunity
execute if score @s luck50 matches ..0 run scoreboard players reset @s luck50
execute if score @s luck100 matches ..0 run scoreboard players reset @s luck100
execute if score @s levitation1 matches ..0 run scoreboard players reset @s levitation1
execute if score @s levitation11 matches ..0 run scoreboard players reset @s levitation11
execute if score @s levitation15 matches ..0 run scoreboard players reset @s levitation15
execute if score @s resistance1 matches ..0 run scoreboard players reset @s resistance1
execute if score @s resistance2 matches ..0 run scoreboard players reset @s resistance2
execute if score @s resistance3 matches ..0 run scoreboard players reset @s resistance3
execute if score @s resistance4 matches ..0 run scoreboard players reset @s resistance4
execute if score @s resistance5 matches ..0 run scoreboard players reset @s resistance5
execute if score @s slowFalling matches ..0 run scoreboard players reset @s slowFalling
execute if score @s slowness1 matches ..0 run scoreboard players reset @s slowness1
execute if score @s slowness2 matches ..0 run scoreboard players reset @s slowness2
execute if score @s slowness3 matches ..0 run scoreboard players reset @s slowness3
execute if score @s slowness4 matches ..0 run scoreboard players reset @s slowness4
execute if score @s slowness5 matches ..0 run scoreboard players reset @s slowness5
execute if score @s slowness10 matches ..0 run scoreboard players reset @s slowness10
execute if score @s strength1 matches ..0 run scoreboard players reset @s strength1
execute if score @s strength2 matches ..0 run scoreboard players reset @s strength2
execute if score @s strength3 matches ..0 run scoreboard players reset @s strength3
execute if score @s strength4 matches ..0 run scoreboard players reset @s strength4
execute if score @s strength5 matches ..0 run scoreboard players reset @s strength5
execute if score @s speed1 matches ..0 run scoreboard players reset @s speed1
execute if score @s speed2 matches ..0 run scoreboard players reset @s speed2
execute if score @s speed3 matches ..0 run scoreboard players reset @s speed3
execute if score @s speed4 matches ..0 run scoreboard players reset @s speed4
execute if score @s speed5 matches ..0 run scoreboard players reset @s speed5
execute if score @s waterBreathing matches ..0 run scoreboard players reset @s waterBreathing
execute if score @s weakness1 matches ..0 run scoreboard players reset @s weakness1
execute if score @s weakness2 matches ..0 run scoreboard players reset @s weakness2
execute if score @s weakness3 matches ..0 run scoreboard players reset @s weakness3
execute if score @s weakness4 matches ..0 run scoreboard players reset @s weakness4
execute if score @s weakness5 matches ..0 run scoreboard players reset @s weakness5
execute if score @s weakness100 matches ..0 run scoreboard players reset @s weakness100

execute if score @s absorption matches ..0 run scoreboard players reset @s absorption
execute if score @s regeneration1 matches ..0 run scoreboard players reset @s regeneration1
execute if score @s regeneration2 matches ..0 run scoreboard players reset @s regeneration2
execute if score @s regeneration3 matches ..0 run scoreboard players reset @s regeneration3
execute if score @s regeneration4 matches ..0 run scoreboard players reset @s regeneration4
execute if score @s poison1 matches ..0 run scoreboard players reset @s poison1
execute if score @s poison2 matches ..0 run scoreboard players reset @s poison2
execute if score @s poison3 matches ..0 run scoreboard players reset @s poison3
execute if score @s poison4 matches ..0 run scoreboard players reset @s poison4
execute if score @s poison5 matches ..0 run scoreboard players reset @s poison5
execute if score @s wither1 matches ..0 run scoreboard players reset @s wither1
execute if score @s wither2 matches ..0 run scoreboard players reset @s wither2
execute if score @s wither3 matches ..0 run scoreboard players reset @s wither3
execute if score @s wither4 matches ..0 run scoreboard players reset @s wither4
execute if score @s wither5 matches ..0 run scoreboard players reset @s wither5