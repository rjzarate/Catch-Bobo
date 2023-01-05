kill @e[type=marker,tag=objective]

execute if score O4 objectiveEList matches 1 run summon marker 206 44 -337 {Tags:["easyObjective","objective","EO4"]}
execute if score O5 objectiveEList matches 1 run summon marker -78 37 -122 {Tags:["easyObjective","objective","EO5"]}
execute if score O6 objectiveEList matches 1 run summon marker 117 49 -453 {Tags:["easyObjective","objective","EO6"]}
execute if score O7 objectiveEList matches 1 run summon marker -19 39 -285 {Tags:["easyObjective","objective","EO7"]}
execute if score O8 objectiveEList matches 1 run summon marker 189 38 -432 {Tags:["easyObjective","objective","EO8"]}
execute if score O9 objectiveEList matches 1 run summon marker 106 41 -206 {Tags:["easyObjective","objective","EO9"]}
execute if score O10 objectiveEList matches 1 run summon marker 241 50 -371 {Tags:["easyObjective","objective","EO10"]}
execute if score O11 objectiveEList matches 1 run summon marker 44 35 -196 {Tags:["easyObjective","objective","EO11"]}
execute if score O12 objectiveEList matches 1 run summon marker 261 41 -301 {Tags:["easyObjective","objective","EO12"]}
execute if score O13 objectiveEList matches 1 run summon marker 158 45 -135 {Tags:["easyObjective","objective","EO13"]}
execute if score O14 objectiveEList matches 1 run summon marker 94 33 -114 {Tags:["easyObjective","objective","EO14"]}
execute if score O15 objectiveEList matches 1 if entity @e[type=armor_stand,tag=package] run summon marker 146 35 -386 {Tags:["easyObjective","objective","EO15"]}
execute if score O15 objectiveEList matches 1 unless entity @e[type=armor_stand,tag=package] run summon marker -49 36 -323 {Tags:["easyObjective","objective","EO15"]}
execute if score O17 objectiveEList matches 1 run summon marker 53 41 -143 {Tags:["easyObjective","objective","EO17"]}
execute if score O18 objectiveEList matches 1 run summon marker 96 102 -272 {Tags:["easyObjective","objective","EO18"]}
execute if score O19 objectiveEList matches 1 run summon marker 152 40 -172 {Tags:["easyObjective","objective","EO19"]}
execute if score O20 objectiveEList matches 1 run summon marker -64 40 -415 {Tags:["easyObjective","objective","EO2"]}
execute if score O22 objectiveEList matches 1 run summon marker 141 20 -296 {Tags:["easyObjective","objective","EO22","tunnel"]}
execute if score O23 objectiveEList matches 1 run summon marker 206.0 36 -127.0 {Tags:["easyObjective","objective","EO23"]}
execute if score O24 objectiveEList matches 1 run summon marker 97 22 -265 {Tags:["easyObjective","objective","EO24","tunnel"]}
execute if score O25 objectiveEList matches 1 run summon marker 97 37 -374 {Tags:["easyObjective","objective","EO25"]}
execute if score O26 objectiveEList matches 1 run summon marker 72 61 -442 {Tags:["easyObjective","objective","EO26"]}