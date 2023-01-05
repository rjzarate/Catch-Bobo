execute unless entity @a[scores={chooseC=100}] run function cb:lobby/class/no_bobo
execute if entity @s[scores={chooseC=100}] run function cb:lobby/class/is_bobo
execute if entity @a[scores={chooseC=100}] if entity @s[scores={chooseC=102}] run function cb:lobby/class/102/chosen
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=102}] if entity @a[scores={chooseC=102}] if score constant sDuplication matches 1 run function cb:lobby/class/102/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=102}] if entity @a[scores={chooseC=102}] if score constant sDuplication matches 2 run function cb:lobby/class/102/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=102}] unless entity @a[scores={chooseC=102}] run function cb:lobby/class/102/success

execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=102}] if entity @a[scores={chooseC=102}] unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 run function cb:lobby/class/failed

