execute unless entity @a[scores={chooseC=100}] run function cb:lobby/class/no_bobo

execute if entity @a[scores={chooseC=100}] unless score number chooseCBanned matches 0.. run function cb:lobby/class/no_ban
execute if entity @a[scores={chooseC=100}] if score number chooseCBanned matches 5 run function cb:lobby/class/5/banned
execute if entity @s[scores={chooseC=100}] run function cb:lobby/class/5/ban

execute if entity @a[scores={chooseC=100}] unless score number chooseCBanned matches 5 if score number chooseCBanned matches 0.. if entity @s[scores={chooseC=5}] run function cb:lobby/class/5/chosen
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 5 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=5}] if entity @a[scores={chooseC=5}] if score constant sDuplication matches 1 run function cb:lobby/class/5/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 5 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=5}] if entity @a[scores={chooseC=5}] if score constant sDuplication matches 3 run function cb:lobby/class/5/success
execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 5 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=5}] unless entity @a[scores={chooseC=5}] run function cb:lobby/class/5/success

execute if entity @a[scores={chooseC=100}] unless entity @s[scores={chooseC=100}] unless score number chooseCBanned matches 5 if score number chooseCBanned matches 0.. unless entity @s[scores={chooseC=5}] if entity @a[scores={chooseC=5}] unless score constant sDuplication matches 1 unless score constant sDuplication matches 3 run function cb:lobby/class/failed

