scoreboard players set constant randomR 9
scoreboard players set constant randomM 8
function cb:random/random
#execute at @s run tellraw @a {"score":{"name":"@p","objective":"randomOutcome"}}

execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=1}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=1}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=1}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=2}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=2}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=2}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=3}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=3}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=3}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=4}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=4}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=4}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=5}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=5}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=5}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=6}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=6}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=6}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=7}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=7}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=7}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=8}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=8}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=8}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=9}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=9}] run tag @s add randomClassGiven
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=9}] run tag @s add randomClassGiven


execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=1}] run function cb:lobby/class/1/check
execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=1}] run function cb:lobby/class/1/check
execute if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=1}] run function cb:lobby/class/1/check
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=2}] run function cb:lobby/class/2/check
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=2}] run function cb:lobby/class/2/check
execute if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=2}] run function cb:lobby/class/2/check
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=3}] run function cb:lobby/class/3/check
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=3}] run function cb:lobby/class/3/check
execute if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=3}] run function cb:lobby/class/3/check
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=4}] run function cb:lobby/class/4/check
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=4}] run function cb:lobby/class/4/check
execute if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=4}] run function cb:lobby/class/4/check
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=5}] run function cb:lobby/class/5/check
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=5}] run function cb:lobby/class/5/check
execute if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=5}] run function cb:lobby/class/5/check
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=6}] run function cb:lobby/class/6/check
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=6}] run function cb:lobby/class/6/check
execute if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=6}] run function cb:lobby/class/6/check
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=7}] run function cb:lobby/class/7/check
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=7}] run function cb:lobby/class/7/check
execute if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=7}] run function cb:lobby/class/7/check
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=8}] run function cb:lobby/class/8/check
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=8}] run function cb:lobby/class/8/check
execute if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=8}] run function cb:lobby/class/8/check
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 1 unless entity @s[scores={chooseC=9}] run function cb:lobby/class/9/check
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 2 unless entity @s[scores={chooseC=9}] run function cb:lobby/class/9/check
execute if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 unless entity @a[scores={chooseC=9}] run function cb:lobby/class/9/check


scoreboard players set constant randomR 64
scoreboard players set constant randomM 63

execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 1 if entity @s[scores={chooseC=1}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 if score constant sDuplication matches 2 if entity @s[scores={chooseC=1}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 0 unless score number chooseCBanned matches 1 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=1}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 0 if score number chooseCBanned matches 1 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 1 if entity @s[scores={chooseC=2}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 if score constant sDuplication matches 2 if entity @s[scores={chooseC=2}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 1 unless score number chooseCBanned matches 2 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=2}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 1 if score number chooseCBanned matches 2 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 1 if entity @s[scores={chooseC=3}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 if score constant sDuplication matches 2 if entity @s[scores={chooseC=3}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 2 unless score number chooseCBanned matches 3 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=3}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 2 if score number chooseCBanned matches 3 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 1 if entity @s[scores={chooseC=4}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 if score constant sDuplication matches 2 if entity @s[scores={chooseC=4}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 3 unless score number chooseCBanned matches 4 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=4}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 3 if score number chooseCBanned matches 4 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 1 if entity @s[scores={chooseC=5}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 if score constant sDuplication matches 2 if entity @s[scores={chooseC=5}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 4 unless score number chooseCBanned matches 5 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=5}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 4 if score number chooseCBanned matches 5 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 1 if entity @s[scores={chooseC=6}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 if score constant sDuplication matches 2 if entity @s[scores={chooseC=6}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 5 unless score number chooseCBanned matches 6 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=6}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 6 if score number chooseCBanned matches 6 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 1 if entity @s[scores={chooseC=7}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 if score constant sDuplication matches 2 if entity @s[scores={chooseC=7}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 6 unless score number chooseCBanned matches 7 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=7}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 6 if score number chooseCBanned matches 7 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 1 if entity @s[scores={chooseC=8}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 if score constant sDuplication matches 2 if entity @s[scores={chooseC=8}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 7 unless score number chooseCBanned matches 8 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=8}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 7 if score number chooseCBanned matches 8 run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 1 if entity @s[scores={chooseC=9}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 if score constant sDuplication matches 2 if entity @s[scores={chooseC=9}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 8 unless score number chooseCBanned matches 9 unless score constant sDuplication matches 1 unless score constant sDuplication matches 2 if entity @a[scores={chooseC=9}] run function cb:lobby/class/random/hunters
execute if entity @s[tag=!randomClassGiven] unless score @s chooseCB matches 1 if score @s randomOutcome matches 8 if score number chooseCBanned matches 9 run function cb:lobby/class/random/hunters