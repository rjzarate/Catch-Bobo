tellraw @s {"text":"\nHard Objectives:","bold":true,"color":"red"}

execute if score @s objectiveH1 matches 0 run tellraw @s {"text":"- Activate Starfruit Swapper","color":"red"}
execute if score @s objectiveH1 matches 1 run tellraw @s {"text":"- Smell a Hunter","color":"red"}
execute if score @s objectiveH1 matches 2 run tellraw @s {"text":"- Scream","color":"red"}
execute if score @s objectiveH1 matches 3 run tellraw @s {"text":"- Start an Emergency Meeting","color":"red"}
execute if score @s objectiveH1 matches 4 run tellraw @s {"text":"- Light the Fireworks","color":"red"}

execute if score @s objectiveH2 matches 0 run tellraw @s {"text":"- Activate Starfruit Swapper","color":"red"}
execute if score @s objectiveH2 matches 1 run tellraw @s {"text":"- Smell a Hunter","color":"red"}
execute if score @s objectiveH2 matches 2 run tellraw @s {"text":"- Scream","color":"red"}
execute if score @s objectiveH2 matches 3 run tellraw @s {"text":"- Start an Emergency Meeting","color":"red"}
execute if score @s objectiveH2 matches 4 run tellraw @s {"text":"- Light the Fireworks","color":"red"}

execute if score @s objectiveH3 matches 0 run tellraw @s {"text":"- Activate Starfruit Swapper","color":"red"}
execute if score @s objectiveH3 matches 1 run tellraw @s {"text":"- Smell a Hunter","color":"red"}
execute if score @s objectiveH3 matches 2 run tellraw @s {"text":"- Scream","color":"red"}
execute if score @s objectiveH3 matches 3 run tellraw @s {"text":"- Start an Emergency Meeting","color":"red"}
execute if score @s objectiveH3 matches 4 run tellraw @s {"text":"- Light the Fireworks","color":"red"}

execute if score @s objectiveH4 matches 0 run tellraw @s {"text":"- Activate Starfruit Swapper","color":"red"}
execute if score @s objectiveH4 matches 1 run tellraw @s {"text":"- Smell a Hunter","color":"red"}
execute if score @s objectiveH4 matches 2 run tellraw @s {"text":"- Scream","color":"red"}
execute if score @s objectiveH4 matches 3 run tellraw @s {"text":"- Start an Emergency Meeting","color":"red"}
execute if score @s objectiveH4 matches 4 run tellraw @s {"text":"- Light the Fireworks","color":"red"}
function cb:game/pre/player/objectives/notify/items