execute unless entity @a[tag=emergencyMeeting] run scoreboard players add @s tempTime 1
execute if score @s tempTime matches 180.. run kill @s

execute if score @s tempTime matches 120 run tellraw @a[team=Hunters] ["",{"text":"There\'s no more "},{"text":"O2","bold":true,"color":"gold"},{"text":"!"}]

execute at @a[tag=!stun,tag=!timeStop,team=Bobo,nbt={Inventory:[{Slot:103b,tag:{impostor:1}}]}] if score @p UUID0 = @s Owner0 if score @p UUID1 = @s Owner1 if score @p UUID2 = @s Owner2 if score @p UUID3 = @s Owner3 run scoreboard players add @p o2Count 1