execute if predicate hunter:jotaro/ora run scoreboard players operation duration actionbarCD = @s oraDuration
execute if predicate hunter:jotaro/ora run scoreboard players operation int actionbarCD = @s oraCD

execute if predicate hunter:guts/indomitable_will run scoreboard players operation duration actionbarCD = @s indomitableWillDuration
execute if predicate hunter:guts/indomitable_will run scoreboard players operation int actionbarCD = @s indomitableWillCD

execute if predicate hunter:guts/berserker_armor run scoreboard players operation duration actionbarCD = @s berserkerArmorDuration
execute if predicate hunter:guts/berserker_armor run scoreboard players operation int actionbarCD = @s berserkerArmorCD

execute if predicate hunter:pepsi_man/pepsi_splash run scoreboard players operation duration actionbarCD = @s pepsiSplashDuration
execute if predicate hunter:pepsi_man/pepsi_splash run scoreboard players operation int actionbarCD = @s pepsiSplashCD

execute if predicate hunter:mori/geundoowun run scoreboard players operation duration actionbarCD = @s geundoowunDuration
execute if predicate hunter:mori/geundoowun run scoreboard players operation int actionbarCD = @s geundoowunCD

execute if predicate hunter:mori/thunder_breaker run scoreboard players operation duration actionbarCD = @s thunderBreakerDuration
execute if predicate hunter:mori/thunder_breaker run scoreboard players operation int actionbarCD = @s thunderBreakerCD

execute if predicate hunter:mori/yongpyo run scoreboard players operation duration actionbarCD = @s yongpyoDuration
execute if predicate hunter:mori/yongpyo run scoreboard players operation int actionbarCD = @s yongpyoCD

execute if predicate hunter:officer/orangutan_cloth run scoreboard players operation duration actionbarCD = @s orangutanClothDuration
execute if predicate hunter:officer/orangutan_cloth run scoreboard players operation int actionbarCD = @s orangutanClothCD

execute if predicate hunter:officer/dog_whistle run scoreboard players operation duration actionbarCD = @s dogWhistleDuration
execute if predicate hunter:officer/dog_whistle run scoreboard players operation int actionbarCD = @s dogWhistleCD

execute if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = duration actionbarCD
scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]

#guts indomitable will
execute unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 if predicate hunter:guts/indomitable_will if score @s berserkerArmorDuration matches 1.. run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"yellow"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]