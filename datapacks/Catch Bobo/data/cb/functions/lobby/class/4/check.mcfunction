execute unless entity @a[scores={chooseC=100}] run function cb:lobby/class/no_bobo

execute if entity @a[scores={chooseC=100}] unless score number chooseCBanned matches 0.. run function cb:lobby/class/no_ban
execute if entity @a[scores={chooseC=100}] if score number chooseCBanned matches 4 run function cb:lobby/class/4/banned
execute if entity @s[scores={chooseC=100}] run function cb:lobby/class/4/ban

execute if entity @a[scores={chooseC=100}] unless score number chooseCBanned matches 4 if score number chooseCBanned matches 0.. if entity @s[scores={chooseC=4}] run function cb:lobby/class/4/chosen
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 4 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=4}] if entity @a[scores={chooseC=4}] if score constant sDuplication matches 1 run function cb:lobby/class/4/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 4 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=4}] if entity @a[scores={chooseC=4}] if score constant sDuplication matches 3 run function cb:lobby/class/4/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 4 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=4}] unless entity @a[scores={chooseC=4}] run function cb:lobby/class/4/success

execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 4 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=4}] if entity @a[scores={chooseC=4}] unless score constant sDuplication matches 1 unless score constant sDuplication matches 3 run function cb:lobby/class/failed

