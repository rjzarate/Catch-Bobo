execute if score @s bCanister matches 3 run title @s actionbar ["",{"text":"Blood Canister - ","bold":true,"color":"dark_red"},{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","color":"white"},{"text":"Blood Samples: ","color":"yellow"},{"score":{"name":"@s","objective":"bCanister"},"bold":true,"color":"yellow"},{"text":"/3","bold":true,"color":"yellow"}]

execute if score @s bCanister matches ..2 run title @s actionbar ["",{"text":"Blood Canister - ","bold":true,"color":"dark_red"},{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","color":"white"},{"text":"Blood Samples: ","color":"yellow"},{"score":{"name":"@s","objective":"bCanister"},"bold":true,"color":"yellow"},{"text":"/3","bold":true,"color":"yellow"}]



