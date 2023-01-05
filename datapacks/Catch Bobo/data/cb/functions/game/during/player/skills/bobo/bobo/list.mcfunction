execute at @s run playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1
function cb:game/pre/player/objectives/notify
execute if score @s objectiveS matches 1 run function cb:game/pre/player/objectives/notify/easy
execute if score @s objectiveS matches 2 run function cb:game/pre/player/objectives/notify/medium
execute if score @s objectiveS matches 3 run function cb:game/pre/player/objectives/notify/halfway
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/notify/hard
execute if score @s objectiveS matches 5 run function cb:game/pre/player/objectives/notify/last