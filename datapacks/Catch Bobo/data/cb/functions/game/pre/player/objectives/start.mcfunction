scoreboard players operation @s objectiveEC = constant sEasyOC
scoreboard players operation @s objectiveMC = constant sMediumOC
scoreboard players operation @s objectiveHC = constant sHardOC
scoreboard players operation @s objectiveHW = constant sEnableHWO
scoreboard players operation @s objectiveL = constant sEnableLO
scoreboard players operation number objectiveLT = constant sLastOT
scoreboard players operation number objectiveLPT = constant sLastOPT

scoreboard players reset @s objectiveEgg
scoreboard players reset @s objectiveSneak
scoreboard players reset @s objectiveHarambe
scoreboard players reset @s objectiveDiamond
scoreboard players reset @s objectiveWool
scoreboard players reset @s objectiveEye
scoreboard players reset @s objectiveCalcite
scoreboard players reset @s objectiveLighter
scoreboard players reset @s objectiveShovel
scoreboard players reset @s objectiveShears
scoreboard players reset @s objectiveBook
scoreboard players reset @s objectiveJump

scoreboard players reset @s objectiveSans
scoreboard players reset @s objectiveAbility
scoreboard players reset @s objectiveDamageT
scoreboard players reset @s objectivePotion
scoreboard players reset @s objectiveFish
scoreboard players reset @s objectiveBell
scoreboard players reset @s objectiveShower
scoreboard players reset @s objectiveSpike
scoreboard players reset @s objectiveFire
scoreboard players reset @s objectiveSFire

scoreboard players reset @s objectiveGApple

scoreboard players reset @s objectiveE1
scoreboard players reset @s objectiveE2
scoreboard players reset @s objectiveE3
scoreboard players reset @s objectiveE4
scoreboard players reset @s objectiveE5
scoreboard players reset @s objectiveE6
scoreboard players reset @s objectiveE7
scoreboard players reset @s objectiveE8
scoreboard players reset @s objectiveE9
scoreboard players reset @s objectiveE10
scoreboard players reset @s objectiveE11
scoreboard players reset @s objectiveE12
scoreboard players reset @s objectiveM1
scoreboard players reset @s objectiveM2
scoreboard players reset @s objectiveM3
scoreboard players reset @s objectiveM4
scoreboard players reset @s objectiveM5
scoreboard players reset @s objectiveM6
scoreboard players reset @s objectiveM7
scoreboard players reset @s objectiveM8
scoreboard players reset @s objectiveM9
scoreboard players reset @s objectiveM10
scoreboard players reset @s objectiveH1
scoreboard players reset @s objectiveH2
scoreboard players reset @s objectiveH3
scoreboard players reset @s objectiveH4
scoreboard players reset @s objectiveH5


scoreboard players set @s objectiveS 1
execute if score @s objectiveEC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 run scoreboard players add @s objectiveS 1
execute if score @s objectiveEC matches ..0 if score @s objectiveMC matches ..0 if score @s objectiveHW matches ..0 if score @s objectiveHC matches ..0 if score @s objectiveS matches ..0 run scoreboard players add @s objectiveS 1

scoreboard players set constant randomR 27
scoreboard players set constant randomM 26
execute unless score @s objectiveEC matches ..0 run function cb:game/pre/player/objectives/easy/1

scoreboard players set constant randomR 19
scoreboard players set constant randomM 18
execute unless score @s objectiveMC matches ..0 run function cb:game/pre/player/objectives/medium/1

scoreboard players set constant randomR 5
scoreboard players set constant randomM 4
execute unless score @s objectiveHC matches ..0 run function cb:game/pre/player/objectives/hard/1

scoreboard players set constant randomR 64
scoreboard players set constant randomM 63

scoreboard players operation @s objectiveEC = constant sEasyOC
scoreboard players operation @s objectiveMC = constant sMediumOC
scoreboard players operation @s objectiveHC = constant sHardOC


function cb:game/pre/player/objectives/list/easy
function cb:game/pre/player/objectives/list/medium
function cb:game/pre/player/objectives/list/hard


execute if score O0 objectiveEList matches 1 run give @a[team=Hunters,gamemode=!spectator] warped_fungus_on_a_stick{display:{Name:'{"text":"Bobo Insulted a Friend","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"Use this item if ","color":"gray"},{"text":"Bobo ","color":"gold","bold":true,"italic":false},{"text":"insulted a friend.","color":"gray"}]','{"text":"Single Use"}']},HideFlags:2,Enchantments:[{}],insult:1,noDrop:1} 1

function cb:game/pre/player/objectives/notify
execute if score @s objectiveS matches 1 run function cb:game/pre/player/objectives/notify/easy
execute if score @s objectiveS matches 2 run function cb:game/pre/player/objectives/notify/medium
execute if score @s objectiveS matches 3 run function cb:game/pre/player/objectives/notify/halfway
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/notify/hard
execute if score @s objectiveS matches 5 run function cb:game/pre/player/objectives/notify/last

function cb:game/pre/player/objectives/items
execute if score @s objectiveS matches 1 run function cb:game/pre/player/objectives/items/easy
execute if score @s objectiveS matches 2 run function cb:game/pre/player/objectives/items/medium
execute if score @s objectiveS matches 4 run function cb:game/pre/player/objectives/items/hard