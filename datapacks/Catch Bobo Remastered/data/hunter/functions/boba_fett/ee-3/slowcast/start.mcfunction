#creates marker and links and gives speed of slowcast
summon minecraft:marker ~ ~ ~ {Tags:["ee-3","slowcast.new","timeStoppable"]}
scoreboard players operation #uuid temp = @s uuid
execute as @e[tag=slowcast.new] run function hunter:boba_fett/ee-3/slowcast/set

