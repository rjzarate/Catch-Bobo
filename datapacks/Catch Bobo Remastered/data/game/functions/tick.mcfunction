execute if score .gameStarted game matches 0 run function game:check

execute if score .teamPhase game matches 1 run function game:tick/team
execute if score .classPhase game matches 1 run function game:tick/class
execute if score .hidingPhase game matches 1 run function game:tick/hiding
execute if score .gamePhase game matches 1 run function game:tick/game
execute if score .endPhase game matches 1 run function game:tick/end
execute if score .winPhase game matches 1 run function game:tick/win