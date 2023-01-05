tellraw @s {"text":"\nLast Objective:","bold":true,"color":"dark_red"}

tellraw @s ["",{"text":"- Survive for ","color":"dark_red"},{"score":{"name":"number","objective":"objectiveLT"},"color":"dark_red"},{"text":" seconds","color":"dark_red"}]
execute if score number objectiveLPT matches 1.. run tellraw @s ["",{"text":"The item to start the objective will be given after ","color":"aqua"},{"score":{"name":"number","objective":"objectiveLPT"},"color":"aqua","bold":true},{"text":" seconds.","color":"aqua"}]