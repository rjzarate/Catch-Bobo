scoreboard players set @s dD 1
scoreboard players add @s dDCD 155

tellraw @s ["",{"text":"Durian Decoy ","bold":true,"color":"gold"},{"text":"is ready!","bold":true,"color":"green"}]
execute at @s run playsound minecraft:block.note_block.pling record @s ~ ~ ~ 1 2