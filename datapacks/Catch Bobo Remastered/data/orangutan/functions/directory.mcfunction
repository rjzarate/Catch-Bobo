execute if predicate orangutan:bobo/banana_blade run function orangutan:actionbar/duration
execute if predicate orangutan:ender_eye run function orangutan:actionbar/directory
execute if predicate orangutan:crossbow run function orangutan:actionbar/directory
execute if predicate orangutan:no_actionbar run function orangutan:actionbar/empty
execute unless predicate orangutan:has_item run function orangutan:actionbar/empty

execute if entity @s[tag=bobo] run function orangutan:bobo/check
execute if entity @s[tag=impostor] run function orangutan:impostor/check
execute if entity @s[tag=purpleGuy] run function orangutan:purple_guy/check
execute if entity @s[tag=teemo] run function orangutan:teemo/check