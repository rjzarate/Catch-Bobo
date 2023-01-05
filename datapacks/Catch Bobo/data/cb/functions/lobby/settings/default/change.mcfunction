playsound minecraft:block.note_block.hat record @a ~ ~ ~ 1 1
kill @e[type=area_effect_cloud,tag=settings]
summon area_effect_cloud -30 ~1.5 0 {Tags:["settings","noDamage","noTimeStop","default"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Switch to","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -30 ~1.25 0 {Tags:["settings","noDamage","noTimeStop","default"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Default Settings","color":"yellow","bold":true,"italic":false}'}



scoreboard players set constant sRandomB 0
summon area_effect_cloud -15 ~1.5 4 {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Bobo","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 4 {Tags:["settings","noDamage","noTimeStop","sRandomB"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}

scoreboard players set constant sRandomC 0
summon area_effect_cloud -15 ~1.5 7 {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Random Classes","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 7 {Tags:["settings","noDamage","noTimeStop","sRandomC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No Teams","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sEnableH 0
summon area_effect_cloud -15 ~1.5 10 {Tags:["settings","noDamage","noTimeStop","sEnableH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Hints","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 10 {Tags:["settings","noDamage","noTimeStop","sEnableH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No","color":"red","bold":false,"italic":true}'}

scoreboard players set constant sHintIT 600
summon area_effect_cloud -17 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Initial Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -17 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","noDamage","noTimeStop","sHintIT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Minutes","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sHintBT 120
summon area_effect_cloud -20 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hint Interval Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -20 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sHintBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"120 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sDaylightI 0
summon area_effect_cloud -23 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Initial","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -23 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sDaylightI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Day","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sDaylightT 2
summon area_effect_cloud -26 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Daylight Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -26 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sDaylightT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"10 Minutes","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sEnableBT 1
summon area_effect_cloud -29 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sEnableBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bee Task","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -29 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sEnableBT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sEnableBR 1
summon area_effect_cloud -32 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sEnableBR"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Resistance","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -32 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sEnableBR"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sEnableBS 1
summon area_effect_cloud -35 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sEnableBS"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Speed","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -35 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sEnableBS"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sEnableBSI 1
summon area_effect_cloud -38 ~1.75 12 {Tags:["settings","noDamage","noTimeStop","sEnableBSI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Speed","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -38 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sEnableBSI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Incremental","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -38 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sEnableBSI"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sBoboER 2
summon area_effect_cloud -41 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Bobo Effect Range","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -41 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sBoboER"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"8-Block Radius","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sEnableBBH 1
summon area_effect_cloud -44 ~1.75 12 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Bobo Ban","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -44 ~1.5 12 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"a Hunter","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -44 ~1.25 12 {Tags:["settings","noDamage","noTimeStop","sEnableBBH"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}


scoreboard players set constant sDuplication 0
summon area_effect_cloud -47 ~1.5 0 {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Duplication","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -47 ~1.25 0 {Tags:["settings","noDamage","noTimeStop","sDuplication"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"No teams","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sInitialT 120
summon area_effect_cloud -47 ~1.5 -3 {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Initial Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -47 ~1.25 -3 {Tags:["settings","noDamage","noTimeStop","sInitialT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"120 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sGameT 2400
summon area_effect_cloud -47 ~1.5 -6 {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -47 ~1.25 -6 {Tags:["settings","noDamage","noTimeStop","sGameT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"40 Minutes","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sGameTW 0
summon area_effect_cloud -47 ~1.5 -9 {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Game Time Winner","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -47 ~1.25 -9 {Tags:["settings","noDamage","noTimeStop","sGameTW"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Default","color":"aqua","bold":false,"italic":true}'}


scoreboard players set constant sEasyOC 8
summon area_effect_cloud -44 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Easy Objective Count","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -44 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sEasyOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"8 Objectives","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sMediumOC 4
summon area_effect_cloud -41 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Medium Objective Count","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -41 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sMediumOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"4 Objectives","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sHardOC 1
summon area_effect_cloud -38 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Hard Objective Count","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -38 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sHardOC"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"1 Objective","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sEnableHWO 1
summon area_effect_cloud -35 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Halfway Objective","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -35 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sEnableHWO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sEnableLO 1
summon area_effect_cloud -32 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sEnableLO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Last Objective","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -32 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sEnableLO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sLastOPT 30
summon area_effect_cloud -29 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sLastOPT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Pre-Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -29 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sLastOPT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"30 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sLastOT 60
summon area_effect_cloud -26 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Last Objective Time","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -26 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sLastOT"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"60 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant sEnableLOG 1
summon area_effect_cloud -23 ~1.75 -12 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Enable Last","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -23 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Objective Glowing","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -23 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sEnableLOG"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Yes","color":"green","bold":false,"italic":true}'}

scoreboard players set constant sNotifyHO 2
summon area_effect_cloud -20 ~1.75 -12 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Notify Hunters","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -20 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"about Objectives","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -20 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","sNotifyHO"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Every Set of Objectives","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant runningRegen 16
summon area_effect_cloud -17 ~1.5 -12 {Tags:["settings","noDamage","noTimeStop","runningRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Running/Airborne","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -17 ~1.25 -12 {Tags:["settings","noDamage","noTimeStop","runningRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 8 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant walkingRegen 4
summon area_effect_cloud -15 ~1.5 -10 {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Walking","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 -10 {Tags:["settings","noDamage","noTimeStop","walkingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 2 Seconds","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant crouchingRegen 2
summon area_effect_cloud -15 ~1.5 -7 {Tags:["settings","noDamage","noTimeStop","crouchingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Crouch Walking","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 -7 {Tags:["settings","noDamage","noTimeStop","crouchingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every 1 Second","color":"aqua","bold":false,"italic":true}'}

scoreboard players set constant notMovingRegen 1
summon area_effect_cloud -15 ~1.5 -4 {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"Regen: Not Moving","color":"yellow","bold":true,"italic":false}'}
summon area_effect_cloud -15 ~1.25 -4 {Tags:["settings","noDamage","noTimeStop","notMovingRegen"],CustomNameVisible:1b,Duration:2147483647,CustomName:'{"text":"½ Heart every ½ Second","color":"aqua","bold":false,"italic":true}'}