execute if predicate hunter:mori/yeoui unless score @s yeouiCD matches 1.. run function hunter:mori/yeoui/activate

execute if predicate hunter:mori/noeseon if score @s noeseonChargeUp matches 1.. at @s run function hunter:mori/noeseon/deactivate
execute if predicate hunter:mori/noeseon unless score @s noeseonCD matches 1.. if score @s geundoowunDuration matches 1.. run function hunter:mori/noeseon/activate

execute if predicate hunter:mori/geundoowun if score @s geundoowunDuration matches 1.. at @s run function hunter:mori/geundoowun/deactivate
execute if predicate hunter:mori/geundoowun unless score @s geundoowunCD matches 1.. at @s run function hunter:mori/geundoowun/activate
execute if predicate hunter:mori/thunder_breaker unless score @s thunderBreakerCD matches 1.. at @s run function hunter:mori/thunder_breaker/activate

execute if predicate hunter:mori/yongpyo unless score @s yongpyoCD matches 1.. at @s run function hunter:mori/yongpyo/activate