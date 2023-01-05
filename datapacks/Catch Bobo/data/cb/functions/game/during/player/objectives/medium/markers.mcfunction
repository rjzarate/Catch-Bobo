kill @e[type=marker,tag=objective]

execute if score O6 objectiveMList matches 1 run summon marker 228 94 -451 {Tags:["mediumObjective","objective","MO6"]}
execute if score O7 objectiveMList matches 1 at @e[type=item,tag=pickle] run summon marker ~ ~ ~ {Tags:["mediumObjective","objective","MO7"]}
execute if score O8 objectiveMList matches 1 run summon marker 234 34 -158 {Tags:["mediumObjective","objective","MO8"]}
execute if score O9 objectiveMList matches 1 run summon marker -57 35 -165 {Tags:["mediumObjective","objective","MO9"]}
execute if score O10 objectiveMList matches 1 as @e[type=marker,tag=water] at @s run summon marker ~ ~ ~ {Tags:["mediumObjective","objective","MO10"]}
execute if score O11 objectiveMList matches 1 run summon marker 208 35 -379 {Tags:["mediumObjective","objective","MO11"]}
execute if score O12 objectiveMList matches 1 run summon marker 74 39 -302 {Tags:["mediumObjective","objective","MO12"]}
execute if score O13 objectiveMList matches 1 run summon marker 161 35 -201 {Tags:["mediumObjective","objective","MO13"]}
execute if score O14 objectiveMList matches 1 at @e[type=marker,tag=fire,tag=!tunnel] run summon marker ~ ~ ~ {Tags:["mediumObjective","objective","MO14"]}
execute if score O14 objectiveMList matches 1 at @e[type=marker,tag=fire,tag=tunnel] run summon marker ~ ~ ~ {Tags:["mediumObjective","objective","MO14","tunnel"]}
execute if score O15 objectiveMList matches 1 run summon marker -35 38 -190 {Tags:["mediumObjective","objective","MO15"]}
execute if score O16 objectiveMList matches 1 run summon marker 246 42 -308 {Tags:["mediumObjective","objective","MO16"]}
execute if score O17 objectiveMList matches 1 at @e[type=enderman,tag=endman] run summon marker ~ ~ ~ {Tags:["mediumObjective","objective","MO17"]}
execute if score O18 objectiveMList matches 1 run summon marker 83 22 -279 {Tags:["mediumObjective","objective","MO18","tunnel"]}