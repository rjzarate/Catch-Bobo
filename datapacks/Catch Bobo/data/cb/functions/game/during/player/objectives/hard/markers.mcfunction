kill @e[type=marker,tag=objective]

execute if score O3 objectiveHList matches 1 run summon marker 146 46 -140 {Tags:["hardObjective","objective","HO3"]}
execute if score O4 objectiveHList matches 1 run summon marker -10 37 -393 {Tags:["hardObjective","objective","HO4"]}