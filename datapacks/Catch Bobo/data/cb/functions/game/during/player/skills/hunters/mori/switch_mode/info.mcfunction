execute if score @s switchMode matches 0 if score @s yongpyoCD matches 120.. if score @s yongpyo matches 1 run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive","bold":true,"color":"red"}]
execute if score @s switchMode matches 1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches 1 run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive ","bold":true,"color":"red"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Active","bold":true,"color":"yellow"}]

execute if score @s switchMode matches 0 unless score @s yongpyoCD matches 120.. run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"yellow"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive","bold":true,"color":"red"}]
execute if score @s switchMode matches 1 unless score @s yongpyoCD matches 120.. run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive ","bold":true,"color":"red"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Active","bold":true,"color":"yellow"}]

execute if score @s switchMode matches 0 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Active ","bold":true,"color":"green"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive","bold":true,"color":"red"}]
execute if score @s switchMode matches 1 if score @s yongpyoCD matches 120.. if score @s yongpyo matches ..0 run title @s actionbar ["",{"text":"Acceleration Mode - ","bold":true,"color":"dark_red"},{"text":"Inactive ","bold":true,"color":"red"},{"text":"| "},{"text":"Power Mode - ","bold":true,"color":"dark_red"},{"text":"Active","bold":true,"color":"green"}]