function cb:game/pre/map/all
execute if score constant sDaylightI matches 0 run time set day
execute if score constant sDaylightI matches 1 run time set noon
execute if score constant sDaylightI matches 2 run time set night
execute if score constant sDaylightI matches 3 run time set midnight
execute as @a if score @s chooseC matches 1 run function cb:game/pre/give/hunters/armor/jotaro
execute as @a if score @s chooseC matches 2 run function cb:game/pre/give/hunters/armor/jett
execute as @a if score @s chooseC matches 3 run function cb:game/pre/give/hunters/armor/vaccinator
execute as @a if score @s chooseC matches 4 run function cb:game/pre/give/hunters/armor/guts
execute as @a if score @s chooseC matches 5 run function cb:game/pre/give/hunters/armor/officer
execute as @a if score @s chooseC matches 6 run function cb:game/pre/give/hunters/armor/mori
execute as @a if score @s chooseC matches 7 run function cb:game/pre/give/hunters/armor/boba_fett
execute as @a if score @s chooseC matches 8 run function cb:game/pre/give/hunters/armor/hacker
execute as @a if score @s chooseC matches 9 run function cb:game/pre/give/hunters/armor/pepsi_man
execute as @a if score @s chooseC matches 100 run function cb:game/pre/give/bobo/bobo
execute as @a if score @s chooseC matches 101 run function cb:game/pre/give/bobo/teemo
execute as @a if score @s chooseC matches 102 run function cb:game/pre/give/bobo/impostor