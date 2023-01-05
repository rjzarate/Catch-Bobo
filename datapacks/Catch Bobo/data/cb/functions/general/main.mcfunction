function cb:general/no_drop
execute as @a run function cb:general/full_inventory
execute as @a unless score @s died matches 0.. run function cb:general/first_join
execute as @a if score @s died matches 1.. run function cb:general/death
execute as @a[scores={leaveGame=1}] run function cb:general/join/directory