#execute store result score #lcg math run data get entity @e[tag=uuid,limit=1] UUID[0]
#execute store result score #temp math run data get entity @e[tag=uuid,limit=1] UUID[1]
#execute store result score #temp1 math run data get entity @e[tag=uuid,limit=1] UUID[2]
#execute store result score #temp2 math run data get entity @e[tag=uuid,limit=1] UUID[3]
#scoreboard players operation #lcg math += #temp math
#scoreboard players operation #lcg math += #temp1 math
#scoreboard players operation #lcg math += #temp2 math

# #lcg math = @s randomN
#

execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]
scoreboard players operation @s randomN = @s UUID0
scoreboard players operation @s randomN += @s UUID1
scoreboard players operation @s randomN += @s UUID2
scoreboard players operation @s randomN += @s UUID3