scoreboard players reset @s recallCrossbow
scoreboard players reset @s recallCrouch
scoreboard players reset @s recallClimb
scoreboard players reset @s recallFall
scoreboard players reset @s recallDamage
scoreboard players reset @s recallSprint
scoreboard players reset @s recallSwim
scoreboard players reset @s recallWalk
scoreboard players reset @s recallWater1
scoreboard players reset @s recallWater2

scoreboard players operation #recallCheck recallStats = @s recallCrossbow
scoreboard players operation #recallCheck recallStats = @s recallCrouch
scoreboard players operation #recallCheck recallStats = @s recallClimb
scoreboard players operation #recallCheck recallStats = @s recallDamage
scoreboard players operation #recallCheck recallStats = @s recallFall
scoreboard players operation #recallCheck recallStats = @s recallSprint
scoreboard players operation #recallCheck recallStats = @s recallSwim
scoreboard players operation #recallCheck recallStats = @s recallWalk
scoreboard players operation #recallCheck recallStats = @s recallWater1
scoreboard players operation #recallCheck recallStats = @s recallWater2

execute if score #recallCheck recallStats matches ..0 run function orangutan:teemo/recall/activate