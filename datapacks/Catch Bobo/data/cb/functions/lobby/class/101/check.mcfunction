execute unless entity @a[scores={chooseC=100}] run function cb:lobby/class/no_bobo
execute if entity @s[scores={chooseC=100}] run function cb:lobby/class/is_bobo
execute if entity @a[scores={chooseC=100}] if entity @s[scores={chooseC=101}] run function cb:lobby/class/101/chosen
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=101}] if entity @a[scores={chooseC=101}] if score constant sDuplication matches 1 run function cb:lobby/class/101/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=101}] if entity @a[scores={chooseC=101}] if score constant sDuplication matches 2 run function cb:lobby/class/101/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=101}] unless entity @a[scores={chooseC=101}] run function cb:lobby/class/101/success

execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless entity @s[scores={chooseC=101}] if entity @a[scores={chooseC=101}] unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 run function cb:lobby/class/failed

