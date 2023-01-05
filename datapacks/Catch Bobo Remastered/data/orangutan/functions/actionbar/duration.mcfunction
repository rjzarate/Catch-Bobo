execute if predicate orangutan:bobo/banana_blade if score @s blindingBlueberryDuration matches 1.. run scoreboard players operation duration actionbarCD = @s blindingBlueberryDuration
execute if predicate orangutan:bobo/banana_blade if score @s blindingBlueberryDuration matches 1.. run scoreboard players operation int actionbarCD = @s blindingBlueberryDuration
execute if predicate orangutan:bobo/banana_blade if score @s durianDecoyDuration matches 1.. run scoreboard players operation duration actionbarCD = @s durianDecoyDuration
execute if predicate orangutan:bobo/banana_blade if score @s durianDecoyDuration matches 1.. run scoreboard players operation int actionbarCD = @s durianDecoyDuration
execute if predicate orangutan:bobo/banana_blade unless score @s blindingBlueberryDuration matches 1.. unless score @s durianDecoyDuration matches 1.. run scoreboard players reset duration actionbarCD

execute if predicate orangutan:bobo/blinding_blueberry run scoreboard players operation duration actionbarCD = @s blindingBlueberryDuration
execute if predicate orangutan:bobo/blinding_blueberry run scoreboard players operation int actionbarCD = @s blindingBlueberryDurianDecoyCD
execute if predicate orangutan:bobo/blinding_blueberry if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s blindingBlueberryDuration

execute if predicate orangutan:bobo/durian_decoy run scoreboard players operation duration actionbarCD = @s durianDecoyDuration
execute if predicate orangutan:bobo/durian_decoy run scoreboard players operation int actionbarCD = @s blindingBlueberryDurianDecoyCD
execute if predicate orangutan:bobo/durian_decoy if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s durianDecoyDuration


execute if predicate orangutan:teemo/move_quick run scoreboard players operation duration actionbarCD = @s moveQuickDuration
execute if predicate orangutan:teemo/move_quick run scoreboard players operation int actionbarCD = @s moveQuickCD
execute if predicate orangutan:teemo/move_quick if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s moveQuickDuration

execute if predicate orangutan:purple_guy/quirky_animatronics run scoreboard players operation duration actionbarCD = @s quirkyAnimatronicsFlamingCorruptionDuration
execute if predicate orangutan:purple_guy/quirky_animatronics run scoreboard players operation int actionbarCD = @s quirkyAnimatronicsFlamingCorruptionCD
execute if predicate orangutan:purple_guy/quirky_animatronics if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s quirkyAnimatronicsFlamingCorruptionDuration

execute if predicate orangutan:purple_guy/flaming_corruption run scoreboard players operation duration actionbarCD = @s quirkyAnimatronicsFlamingCorruptionDuration
execute if predicate orangutan:purple_guy/flaming_corruption run scoreboard players operation int actionbarCD = @s quirkyAnimatronicsFlamingCorruptionCD
execute if predicate orangutan:purple_guy/flaming_corruption if score duration actionbarCD matches 1.. run scoreboard players operation int actionbarCD = @s quirkyAnimatronicsFlamingCorruptionDuration


scoreboard players operation dec actionbarCD = int actionbarCD
scoreboard players operation int actionbarCD /= #20 constant
scoreboard players operation dec actionbarCD %= #20 constant
scoreboard players operation dec actionbarCD /= #2 constant

execute if score duration actionbarCD matches 1.. run title @s actionbar ["",{"text":"Active ","bold":false,"italic":true,"color":"green"},{"text":"— ","bold":true},{"text":"Duration: ","bold":true,"color":"yellow"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"}]

execute unless predicate orangutan:bobo/banana_blade unless score duration actionbarCD matches 1.. if score int actionbarCD matches 0.. if score dec actionbarCD matches 0.. run title @s actionbar ["",{"text":"Not Ready ","bold":true,"color":"red"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"red"},{"text":"(","italic":true,"color":"#D4D439"},{"score":{"name":"int","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":".","italic":true,"color":"#D4D439"},{"score":{"name":"dec","objective":"actionbarCD"},"italic":true,"color":"#D4D439"},{"text":")","italic":true,"color":"#D4D439"}]
execute unless predicate orangutan:bobo/banana_blade unless score duration actionbarCD matches 1.. if score int actionbarCD matches ..0 if score dec actionbarCD matches ..0 run title @s actionbar ["",{"text":"Ready ","bold":true,"color":"green"},{"text":"| ","bold":true},{"text":"CD: ","bold":true,"color":"yellow"},{"text":"\u2b24 ","color":"dark_green"},{"text":"(0.0)","italic":true,"color":"#D4D439"}]