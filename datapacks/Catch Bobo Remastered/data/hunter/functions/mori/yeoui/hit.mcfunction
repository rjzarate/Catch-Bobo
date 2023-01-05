tag @s add hit

execute as @a[tag=mori,tag=shot] at @s run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 0.5 0.7

scoreboard players operation #geundoowunBuff temp = @a[tag=mori,tag=shot] geundoowunBuff
scoreboard players operation #yongpyoDuration temp = @a[tag=mori,tag=shot] yongpyoDuration
scoreboard players operation #yongpyoPowerOrAcceleration temp = @a[tag=mori,tag=shot] yongpyoPowerOrAcceleration

#execute unless score #geundoowunBuff temp matches 1.. unless score #yongpyoDuration temp matches 1.. run function general:apply/damage/4
#execute if score #geundoowunBuff temp matches 1.. unless score #yongpyoDuration temp matches 1.. run function general:apply/damage/6
#execute if score #geundoowunBuff temp matches 1.. if score #yongpyoDuration temp matches 1.. if score #yongpyoPowerOrAcceleration temp matches 1 run function general:apply/damage/6
#execute if score #geundoowunBuff temp matches 1.. if score #yongpyoDuration temp matches 1.. if score #yongpyoPowerOrAcceleration temp matches 0 run function general:apply/damage/7
#execute unless score #geundoowunBuff temp matches 1.. if score #yongpyoDuration temp matches 1.. if score #yongpyoPowerOrAcceleration temp matches 0 run function general:apply/damage/5
#execute unless score #geundoowunBuff temp matches 1.. if score #yongpyoDuration temp matches 1.. if score #yongpyoPowerOrAcceleration temp matches 1 run function general:apply/damage/4

execute if score #geundoowunBuff temp matches 1.. run scoreboard players add #damage temp 2
execute if score #yongpyoDuration temp matches 1.. if score #yongpyoPowerOrAcceleration temp matches 0 run scoreboard players add #damage temp 1
function general:apply/damage/directory