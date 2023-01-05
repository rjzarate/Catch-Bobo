scoreboard players remove @s geundoowunDuration 1
execute if score @s geundoowunDuration = .chargeUp20t noeseonStats run function hunter:mori/geundoowun/give_geundoowun
execute if score @s geundoowunDuration matches ..0 at @s run function hunter:mori/geundoowun/deactivate