tellraw @s ["",{"text":"\n","bold":true,"color":"green"}]
execute if score @s objectiveEC matches 1.. run tellraw @s ["",{"text":"Easy Objectives: ","bold":true,"color":"green"},{"score":{"name":"@s","objective":"objectiveEC"},"bold":true,"color":"aqua"}]
execute if score @s objectiveMC matches 1.. run tellraw @s ["",{"text":"Medium Objectives: ","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"objectiveMC"},"bold":true,"color":"aqua"}]
execute if score @s objectiveHW matches 1.. run tellraw @s ["",{"text":"Halfway Objective: ","bold":true,"color":"light_purple"},{"text":"1","bold":true,"color":"aqua"}]
execute if score @s objectiveHC matches 1.. run tellraw @s ["",{"text":"Hard Objectives: ","bold":true,"color":"red"},{"score":{"name":"@s","objective":"objectiveHC"},"bold":true,"color":"aqua"}]
execute if score @s objectiveL matches 1.. run tellraw @s ["",{"text":"Last Objective: ","bold":true,"color":"dark_red"},{"text":"1","bold":true,"color":"aqua"}]



execute if score @s objectiveEC matches 1.. if score @s objectiveMC matches 1.. run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Easy Objectives","bold":true,"color":"green"},{"text":", you move on to ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":".","color":"aqua"}]
execute if score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. if score @s objectiveHW matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Easy Objectives","bold":true,"color":"green"},{"text":", you move on to the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":".","color":"aqua"}]
execute if score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 if score @s objectiveHC matches 1.. run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Easy Objectives","bold":true,"color":"green"},{"text":", you move on to ","color":"aqua"},{"text":"Hard Objectives","bold":true,"color":"red"},{"text":".","color":"aqua"}]
execute if score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. if score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Easy Objectives","bold":true,"color":"green"},{"text":", you move on to the ","color":"aqua"},{"text":"Last Objective","bold":true,"color":"red"},{"text":".","color":"aqua"}]
execute if score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. unless score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Easy Objectives","bold":true,"color":"green"},{"text":", you ","color":"aqua"},{"text":"Win","bold":true,"color":"gold"},{"text":"!","color":"aqua"}]

execute unless score @s objectiveEC matches 1.. if score @s objectiveMC matches 1.. if score @s objectiveHW matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":", you move on to the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. if score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 if score @s objectiveHC matches 1.. run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":", you move on to ","color":"aqua"},{"text":"Hard Objectives","bold":true,"color":"red"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. if score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. if score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":", you move on to the ","color":"aqua"},{"text":"Last Objective","bold":true,"color":"dark_red"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. if score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. unless score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Medium Objectives","bold":true,"color":"yellow"},{"text":", you ","color":"aqua"},{"text":"Win","bold":true,"color":"gold"},{"text":"!","color":"aqua"}]

execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. if score @s objectiveHW matches 1 if score @s objectiveHC matches 1.. run tellraw @s ["",{"text":"After completing the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":", you move on to ","color":"aqua"},{"text":"Hard Objectives","bold":true,"color":"red"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. if score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. if score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":", you move on to the ","color":"aqua"},{"text":"Last Objective","bold":true,"color":"dark_red"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. if score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. unless score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing the ","color":"aqua"},{"text":"Halfway Objective","bold":true,"color":"light_purple"},{"text":", you ","color":"aqua"},{"text":"Win","bold":true,"color":"gold"},{"text":"!","color":"aqua"}]

execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 if score @s objectiveHC matches 1.. if score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Hard Objectives","bold":true,"color":"red"},{"text":", you move on to the ","color":"aqua"},{"text":"Last Objective","bold":true,"color":"dark_red"},{"text":".","color":"aqua"}]
execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 if score @s objectiveHC matches 1.. unless score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing all ","color":"aqua"},{"text":"Hard Objectives","bold":true,"color":"red"},{"text":", you ","color":"aqua"},{"text":"Win","bold":true,"color":"gold"},{"text":"!","color":"aqua"}]

execute unless score @s objectiveEC matches 1.. unless score @s objectiveMC matches 1.. unless score @s objectiveHW matches 1 unless score @s objectiveHC matches 1.. if score @s objectiveL matches 1 run tellraw @s ["",{"text":"After completing the ","color":"aqua"},{"text":"Last Objective","bold":true,"color":"dark_red"},{"text":", you ","color":"aqua"},{"text":"Win","bold":true,"color":"gold"},{"text":"!","color":"aqua"}]