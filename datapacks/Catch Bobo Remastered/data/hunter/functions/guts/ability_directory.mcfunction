execute if predicate hunter:guts/indomitable_will unless score @s indomitableWillCD matches 1.. unless score @s berserkerArmorDuration matches 1.. run function hunter:guts/indomitable_will/activate

execute if predicate hunter:guts/berserker_armor unless score @s berserkerArmorCD matches 1.. run function hunter:guts/berserker_armor/activate