#amplifier = stacks of overloadedBrewing; duration = unstable concoction stacks
scoreboard players set .stacks vaccinatorEffect 0
scoreboard players set .percentage vaccinatorEffect 100
scoreboard players operation .stacks vaccinatorEffect += @p[tag=vaccinator,gamemode=!spectator,distance=..1] overloadedBrewing
scoreboard players operation @p[tag=vaccinator,gamemode=!spectator,distance=..1] unstableConcoction /= #20 constant
scoreboard players operation .percentage vaccinatorEffect += @p[tag=vaccinator,gamemode=!spectator,distance=..1] unstableConcoction
scoreboard players operation @p[tag=vaccinator,gamemode=!spectator,distance=..1] unstableConcoction *= #20 constant

#clears the scoreboard so it looks nicer
scoreboard players reset .effect1 vaccinatorEffect
scoreboard players reset .effect2 vaccinatorEffect
scoreboard players reset .effect3 vaccinatorEffect
scoreboard players reset .effect4 vaccinatorEffect
scoreboard players reset .effect5 vaccinatorEffect
scoreboard players reset .effect1Duration vaccinatorEffect
scoreboard players reset .effect2Duration vaccinatorEffect
scoreboard players reset .effect3Duration vaccinatorEffect
scoreboard players reset .effect4Duration vaccinatorEffect
scoreboard players reset .effect5Duration vaccinatorEffect

#first random effect
scoreboard players set in math 1
scoreboard players set in1 math 5
function math:rng/range
scoreboard players operation .effect1 vaccinatorEffect = out math

#added effects depending on overloaded brewing stack
execute if score .stacks vaccinatorEffect matches 1.. run function hunter:vaccinator/effect/stack/1
execute if score .stacks vaccinatorEffect matches 2.. run function hunter:vaccinator/effect/stack/2
execute if score .stacks vaccinatorEffect matches 3.. run function hunter:vaccinator/effect/stack/3
execute if score .stacks vaccinatorEffect matches 4.. run function hunter:vaccinator/effect/stack/4

#change effect depending on team
execute if entity @s[tag=hunter] run scoreboard players add .effect1 vaccinatorEffect 5
execute if score .stacks vaccinatorEffect matches 1.. if entity @s[tag=hunter] run scoreboard players add .effect2 vaccinatorEffect 5
execute if score .stacks vaccinatorEffect matches 2.. if entity @s[tag=hunter] run scoreboard players add .effect3 vaccinatorEffect 5
execute if score .stacks vaccinatorEffect matches 3.. if entity @s[tag=hunter] run scoreboard players add .effect4 vaccinatorEffect 5
execute if score .stacks vaccinatorEffect matches 4.. if entity @s[tag=hunter] run scoreboard players add .effect5 vaccinatorEffect 5

#duration of the effect depending on the type of effect
execute if score .effect1 vaccinatorEffect matches 1 run scoreboard players operation .effect1Duration vaccinatorEffect = .blindness syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 2 run scoreboard players operation .effect1Duration vaccinatorEffect = .poison1 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 3 run scoreboard players operation .effect1Duration vaccinatorEffect = .wither1 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 4 run scoreboard players operation .effect1Duration vaccinatorEffect = .slowness1 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 5 run scoreboard players operation .effect1Duration vaccinatorEffect = .glowing syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 6 run scoreboard players operation .effect1Duration vaccinatorEffect = .speed1 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 8 run scoreboard players operation .effect1Duration vaccinatorEffect = .regeneration1 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 9 run scoreboard players operation .effect1Duration vaccinatorEffect = .absorption3 syringeLauncherStats
execute if score .effect1 vaccinatorEffect matches 10 run scoreboard players operation .effect1Duration vaccinatorEffect = .resistance1 syringeLauncherStats
scoreboard players operation .effect1Duration vaccinatorEffect *= #20 constant
scoreboard players operation .effect1Duration vaccinatorEffect *= .percentage vaccinatorEffect
scoreboard players operation .effect1Duration vaccinatorEffect /= #100 constant
execute if score .effect2 vaccinatorEffect matches 1 run scoreboard players operation .effect2Duration vaccinatorEffect = .blindness syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 2 run scoreboard players operation .effect2Duration vaccinatorEffect = .poison1 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 3 run scoreboard players operation .effect2Duration vaccinatorEffect = .wither1 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 4 run scoreboard players operation .effect2Duration vaccinatorEffect = .slowness1 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 5 run scoreboard players operation .effect2Duration vaccinatorEffect = .glowing syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 6 run scoreboard players operation .effect2Duration vaccinatorEffect = .speed1 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 8 run scoreboard players operation .effect2Duration vaccinatorEffect = .regeneration1 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 9 run scoreboard players operation .effect2Duration vaccinatorEffect = .absorption3 syringeLauncherStats
execute if score .effect2 vaccinatorEffect matches 10 run scoreboard players operation .effect2Duration vaccinatorEffect = .resistance1 syringeLauncherStats
scoreboard players operation .effect2Duration vaccinatorEffect *= #20 constant
scoreboard players operation .effect2Duration vaccinatorEffect *= .percentage vaccinatorEffect
scoreboard players operation .effect2Duration vaccinatorEffect /= #100 constant
execute if score .effect3 vaccinatorEffect matches 1 run scoreboard players operation .effect3Duration vaccinatorEffect = .blindness syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 2 run scoreboard players operation .effect3Duration vaccinatorEffect = .poison1 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 3 run scoreboard players operation .effect3Duration vaccinatorEffect = .wither1 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 4 run scoreboard players operation .effect3Duration vaccinatorEffect = .slowness1 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 5 run scoreboard players operation .effect3Duration vaccinatorEffect = .glowing syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 6 run scoreboard players operation .effect3Duration vaccinatorEffect = .speed1 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 8 run scoreboard players operation .effect3Duration vaccinatorEffect = .regeneration1 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 9 run scoreboard players operation .effect3Duration vaccinatorEffect = .absorption3 syringeLauncherStats
execute if score .effect3 vaccinatorEffect matches 10 run scoreboard players operation .effect3Duration vaccinatorEffect = .resistance1 syringeLauncherStats
scoreboard players operation .effect3Duration vaccinatorEffect *= #20 constant
scoreboard players operation .effect3Duration vaccinatorEffect *= .percentage vaccinatorEffect
scoreboard players operation .effect3Duration vaccinatorEffect /= #100 constant
execute if score .effect4 vaccinatorEffect matches 1 run scoreboard players operation .effect4Duration vaccinatorEffect = .blindness syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 2 run scoreboard players operation .effect4Duration vaccinatorEffect = .poison1 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 3 run scoreboard players operation .effect4Duration vaccinatorEffect = .wither1 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 4 run scoreboard players operation .effect4Duration vaccinatorEffect = .slowness1 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 5 run scoreboard players operation .effect4Duration vaccinatorEffect = .glowing syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 6 run scoreboard players operation .effect4Duration vaccinatorEffect = .speed1 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 8 run scoreboard players operation .effect4Duration vaccinatorEffect = .regeneration1 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 9 run scoreboard players operation .effect4Duration vaccinatorEffect = .absorption3 syringeLauncherStats
execute if score .effect4 vaccinatorEffect matches 10 run scoreboard players operation .effect4Duration vaccinatorEffect = .resistance1 syringeLauncherStats
scoreboard players operation .effect4Duration vaccinatorEffect *= #20 constant
scoreboard players operation .effect4Duration vaccinatorEffect *= .percentage vaccinatorEffect
scoreboard players operation .effect4Duration vaccinatorEffect /= #100 constant
execute if score .effect5 vaccinatorEffect matches 1 run scoreboard players operation .effect5Duration vaccinatorEffect = .blindness syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 2 run scoreboard players operation .effect5Duration vaccinatorEffect = .poison1 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 3 run scoreboard players operation .effect5Duration vaccinatorEffect = .wither1 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 4 run scoreboard players operation .effect5Duration vaccinatorEffect = .slowness1 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 5 run scoreboard players operation .effect5Duration vaccinatorEffect = .glowing syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 6 run scoreboard players operation .effect5Duration vaccinatorEffect = .speed1 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 8 run scoreboard players operation .effect5Duration vaccinatorEffect = .regeneration1 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 9 run scoreboard players operation .effect5Duration vaccinatorEffect = .absorption3 syringeLauncherStats
execute if score .effect5 vaccinatorEffect matches 10 run scoreboard players operation .effect5Duration vaccinatorEffect = .resistance1 syringeLauncherStats
scoreboard players operation .effect5Duration vaccinatorEffect *= #20 constant
scoreboard players operation .effect5Duration vaccinatorEffect *= .percentage vaccinatorEffect
scoreboard players operation .effect5Duration vaccinatorEffect /= #100 constant


scoreboard players operation @s blindness = @s blindness
scoreboard players operation @s poison1 = @s poison1
scoreboard players operation @s wither1 = @s wither1
scoreboard players operation @s slowness1 = @s slowness1
scoreboard players operation @s glowing = @s glowing
scoreboard players operation @s speed1 = @s speed1
scoreboard players operation @s regeneration1 = @s regeneration1
scoreboard players operation @s absorption = @s absorption
scoreboard players operation @s resistance1 = @s resistance1

#give effects
execute if score .effect1 vaccinatorEffect matches 1 if score @s blindness < .effect1Duration vaccinatorEffect run scoreboard players operation @s blindness = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 2 if score @s poison1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s poison1 = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 3 if score @s wither1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s wither1 = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 4 if score @s slowness1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s slowness1 = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 5 if score @s glowing < .effect1Duration vaccinatorEffect run scoreboard players operation @s glowing = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 6 if score @s speed1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s speed1 = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 7 run effect give @s minecraft:instant_health 1 0
execute if score .effect1 vaccinatorEffect matches 8 if score @s regeneration1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s regeneration1 = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 9 if score @s absorption < .effect1Duration vaccinatorEffect run scoreboard players operation @s absorption = .effect1Duration vaccinatorEffect
execute if score .effect1 vaccinatorEffect matches 9 run function general:apply/effect/give_absorption/3
execute if score .effect1 vaccinatorEffect matches 10 if score @s resistance1 < .effect1Duration vaccinatorEffect run scoreboard players operation @s resistance1 = .effect1Duration vaccinatorEffect

execute if score .effect2 vaccinatorEffect matches 1 if score @s blindness < .effect2Duration vaccinatorEffect run scoreboard players operation @s blindness = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 2 if score @s poison1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s poison1 = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 3 if score @s wither1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s wither1 = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 4 if score @s slowness1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s slowness1 = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 5 if score @s glowing < .effect2Duration vaccinatorEffect run scoreboard players operation @s glowing = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 6 if score @s speed1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s speed1 = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 7 run effect give @s minecraft:instant_health 1 0
execute if score .effect2 vaccinatorEffect matches 8 if score @s regeneration1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s regeneration1 = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 9 if score @s absorption < .effect2Duration vaccinatorEffect run scoreboard players operation @s absorption = .effect2Duration vaccinatorEffect
execute if score .effect2 vaccinatorEffect matches 9 run function general:apply/effect/give_absorption/3
execute if score .effect2 vaccinatorEffect matches 10 if score @s resistance1 < .effect2Duration vaccinatorEffect run scoreboard players operation @s resistance1 = .effect2Duration vaccinatorEffect

execute if score .effect3 vaccinatorEffect matches 1 if score @s blindness < .effect3Duration vaccinatorEffect run scoreboard players operation @s blindness = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 2 if score @s poison1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s poison1 = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 3 if score @s wither1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s wither1 = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 4 if score @s slowness1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s slowness1 = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 5 if score @s glowing < .effect3Duration vaccinatorEffect run scoreboard players operation @s glowing = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 6 if score @s speed1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s speed1 = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 7 run effect give @s minecraft:instant_health 1 0
execute if score .effect3 vaccinatorEffect matches 8 if score @s regeneration1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s regeneration1 = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 9 if score @s absorption < .effect3Duration vaccinatorEffect run scoreboard players operation @s absorption = .effect3Duration vaccinatorEffect
execute if score .effect3 vaccinatorEffect matches 9 run function general:apply/effect/give_absorption/3
execute if score .effect3 vaccinatorEffect matches 10 if score @s resistance1 < .effect3Duration vaccinatorEffect run scoreboard players operation @s resistance1 = .effect3Duration vaccinatorEffect

execute if score .effect4 vaccinatorEffect matches 1 if score @s blindness < .effect4Duration vaccinatorEffect run scoreboard players operation @s blindness = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 2 if score @s poison1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s poison1 = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 3 if score @s wither1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s wither1 = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 4 if score @s slowness1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s slowness1 = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 5 if score @s glowing < .effect4Duration vaccinatorEffect run scoreboard players operation @s glowing = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 6 if score @s speed1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s speed1 = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 7 run effect give @s minecraft:instant_health 1 0
execute if score .effect4 vaccinatorEffect matches 8 if score @s regeneration1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s regeneration1 = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 9 if score @s absorption < .effect4Duration vaccinatorEffect run scoreboard players operation @s absorption = .effect4Duration vaccinatorEffect
execute if score .effect4 vaccinatorEffect matches 9 run function general:apply/effect/give_absorption/3
execute if score .effect4 vaccinatorEffect matches 10 if score @s resistance1 < .effect4Duration vaccinatorEffect run scoreboard players operation @s resistance1 = .effect4Duration vaccinatorEffect

execute if score .effect5 vaccinatorEffect matches 1 if score @s blindness < .effect5Duration vaccinatorEffect run scoreboard players operation @s blindness = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 2 if score @s poison1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s poison1 = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 3 if score @s wither1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s wither1 = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 4 if score @s slowness1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s slowness1 = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 5 if score @s glowing < .effect5Duration vaccinatorEffect run scoreboard players operation @s glowing = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 6 if score @s speed1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s speed1 = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 7 run effect give @s minecraft:instant_health 1 0
execute if score .effect5 vaccinatorEffect matches 8 if score @s regeneration1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s regeneration1 = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 9 if score @s absorption < .effect5Duration vaccinatorEffect run scoreboard players operation @s absorption = .effect5Duration vaccinatorEffect
execute if score .effect5 vaccinatorEffect matches 9 run function general:apply/effect/give_absorption/3
execute if score .effect5 vaccinatorEffect matches 10 if score @s resistance1 < .effect5Duration vaccinatorEffect run scoreboard players operation @s resistance1 = .effect5Duration vaccinatorEffect


tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"You gave the target: ","bold":true}]
execute if score .effect1 vaccinatorEffect matches 1 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Blindness","color":"red"}]
execute if score .effect1 vaccinatorEffect matches 2 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Poison I","color":"red"}]
execute if score .effect1 vaccinatorEffect matches 3 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Wither I","color":"red"}]
execute if score .effect1 vaccinatorEffect matches 4 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Slowness I","color":"red"}]
execute if score .effect1 vaccinatorEffect matches 5 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Glowing","color":"aqua"}]
execute if score .effect1 vaccinatorEffect matches 6 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Speed I","color":"aqua"}]
execute if score .effect1 vaccinatorEffect matches 7 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Instant Health I","color":"green"}]
execute if score .effect1 vaccinatorEffect matches 8 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Regeneration I","color":"green"}]
execute if score .effect1 vaccinatorEffect matches 9 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Absorption III","color":"green"}]
execute if score .effect1 vaccinatorEffect matches 10 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Resistance I","color":"green"}]

execute if score .effect2 vaccinatorEffect matches 1 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Blindness","color":"red"}]
execute if score .effect2 vaccinatorEffect matches 2 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Poison I","color":"red"}]
execute if score .effect2 vaccinatorEffect matches 3 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Wither I","color":"red"}]
execute if score .effect2 vaccinatorEffect matches 4 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Slowness I","color":"red"}]
execute if score .effect2 vaccinatorEffect matches 5 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Glowing","color":"aqua"}]
execute if score .effect2 vaccinatorEffect matches 6 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Speed I","color":"aqua"}]
execute if score .effect2 vaccinatorEffect matches 7 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Instant Health I","color":"green"}]
execute if score .effect2 vaccinatorEffect matches 8 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Regeneration I","color":"green"}]
execute if score .effect2 vaccinatorEffect matches 9 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Absorption III","color":"green"}]
execute if score .effect2 vaccinatorEffect matches 10 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Resistance I","color":"green"}]

execute if score .effect3 vaccinatorEffect matches 1 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Blindness","color":"red"}]
execute if score .effect3 vaccinatorEffect matches 2 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Poison I","color":"red"}]
execute if score .effect3 vaccinatorEffect matches 3 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Wither I","color":"red"}]
execute if score .effect3 vaccinatorEffect matches 4 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Slowness I","color":"red"}]
execute if score .effect3 vaccinatorEffect matches 5 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Glowing","color":"aqua"}]
execute if score .effect3 vaccinatorEffect matches 6 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Speed I","color":"aqua"}]
execute if score .effect3 vaccinatorEffect matches 7 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Instant Health I","color":"green"}]
execute if score .effect3 vaccinatorEffect matches 8 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Regeneration I","color":"green"}]
execute if score .effect3 vaccinatorEffect matches 9 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Absorption III","color":"green"}]
execute if score .effect3 vaccinatorEffect matches 10 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Resistance I","color":"green"}]

execute if score .effect4 vaccinatorEffect matches 1 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Blindness","color":"red"}]
execute if score .effect4 vaccinatorEffect matches 2 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Poison I","color":"red"}]
execute if score .effect4 vaccinatorEffect matches 3 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Wither I","color":"red"}]
execute if score .effect4 vaccinatorEffect matches 4 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Slowness I","color":"red"}]
execute if score .effect4 vaccinatorEffect matches 5 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Glowing","color":"aqua"}]
execute if score .effect4 vaccinatorEffect matches 6 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Speed I","color":"aqua"}]
execute if score .effect4 vaccinatorEffect matches 7 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Instant Health I","color":"green"}]
execute if score .effect4 vaccinatorEffect matches 8 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Regeneration I","color":"green"}]
execute if score .effect4 vaccinatorEffect matches 9 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Absorption III","color":"green"}]
execute if score .effect4 vaccinatorEffect matches 10 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Resistance I","color":"green"}]

execute if score .effect5 vaccinatorEffect matches 1 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Blindness","color":"red"}]
execute if score .effect5 vaccinatorEffect matches 2 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Poison I","color":"red"}]
execute if score .effect5 vaccinatorEffect matches 3 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Wither I","color":"red"}]
execute if score .effect5 vaccinatorEffect matches 4 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Slowness I","color":"red"}]
execute if score .effect5 vaccinatorEffect matches 5 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Glowing","color":"aqua"}]
execute if score .effect5 vaccinatorEffect matches 6 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Speed I","color":"aqua"}]
execute if score .effect5 vaccinatorEffect matches 7 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Instant Health I","color":"green"}]
execute if score .effect5 vaccinatorEffect matches 8 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Regeneration I","color":"green"}]
execute if score .effect5 vaccinatorEffect matches 9 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Absorption III","color":"green"}]
execute if score .effect5 vaccinatorEffect matches 10 run tellraw @p[tag=vaccinator,gamemode=!spectator,distance=..1] ["",{"text":"– ","bold":true},{"text":"Resistance I","color":"green"}]




execute at @s run particle minecraft:entity_effect ~ ~1 ~ 0.2 0.5 0.2 10 20
effect clear @s minecraft:unluck
advancement revoke @s only hunter:vaccinator/effect