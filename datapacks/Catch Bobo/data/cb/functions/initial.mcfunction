scoreboard objectives add test dummy
scoreboard objectives add gameID dummy
scoreboard objectives add gameStarted dummy
scoreboard objectives add gamePickingC dummy
scoreboard objectives add gameInProgress dummy
scoreboard objectives add endGame dummy {"text":"End Game?","bold":true,"color":"red"}
scoreboard objectives add gameT dummy
scoreboard players set constant gameT 20
scoreboard objectives add gameTE dummy
scoreboard objectives add gameTP dummy
scoreboard objectives add hintT dummy
scoreboard players set constant gameTP 10
scoreboard objectives add initialT dummy
scoreboard objectives add died deathCount

#lobby
function cb:lobby/info
scoreboard objectives add playerReady dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add playerStartCount dummy
scoreboard objectives add chooseTReady dummy
scoreboard objectives add chooseTCount dummy
scoreboard objectives add chooseTSCount dummy
scoreboard objectives add chooseTBCount dummy
scoreboard objectives add chooseTBSCount dummy
scoreboard objectives add chooseC dummy
scoreboard objectives add chooseCB dummy
scoreboard objectives add chooseCBanned dummy
scoreboard objectives add chooseCReady dummy
scoreboard objectives add chooseCCount dummy
scoreboard objectives add chooseCSCount dummy

#settings
scoreboard objectives add sRandomB dummy
scoreboard objectives add sRandomC dummy
scoreboard objectives add sEnableH dummy
scoreboard objectives add sHintIT dummy
scoreboard objectives add sHintBT dummy
scoreboard objectives add sDaylightI dummy
scoreboard objectives add sDaylightT dummy
scoreboard objectives add sEnableBT dummy
scoreboard objectives add sHealthB dummy
scoreboard objectives add sEnableBR dummy
scoreboard objectives add sEnableBS dummy
scoreboard objectives add sEnableBSI dummy
scoreboard objectives add sBoboER dummy
scoreboard objectives add sEnableBBH dummy
scoreboard objectives add sHealthBH dummy
scoreboard objectives add sCountBH dummy
#regeneration dependent on the _Regen scoreboards
scoreboard objectives add sDuplication dummy
scoreboard objectives add sInitialT dummy
scoreboard objectives add sGameT dummy
scoreboard objectives add sGameTW dummy
scoreboard objectives add sEasyOC dummy
scoreboard objectives add sMediumOC dummy
scoreboard objectives add sHardOC dummy
scoreboard objectives add sEnableHWO dummy
scoreboard objectives add sEnableLO dummy
scoreboard objectives add sEnableLOG dummy
scoreboard objectives add sLastOT dummy
scoreboard objectives add sLastOPT dummy
scoreboard objectives add sNotifyHO dummy

#hints
scoreboard objectives add hint dummy
scoreboard objectives add hintX dummy
scoreboard objectives add hintY dummy
scoreboard objectives add hintZ dummy
scoreboard objectives add hintTemp dummy

#general
scoreboard objectives add fullInventory dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add Rotation1 dummy
scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy
scoreboard objectives add Owner0 dummy
scoreboard objectives add Owner1 dummy
scoreboard objectives add Owner2 dummy
scoreboard objectives add Owner3 dummy
scoreboard objectives add 0 dummy
scoreboard objectives add -288 dummy
scoreboard objectives add -1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 4 dummy
scoreboard objectives add 96 dummy
scoreboard objectives add 15000 dummy
scoreboard players set constant 0 0
scoreboard players set constant -288 -288
scoreboard players set constant -1 -1
scoreboard players set constant 2 2
scoreboard players set constant 4 4
scoreboard players set constant 96 96
scoreboard players set constant 15000 15000
scoreboard objectives add health health
scoreboard objectives add health.5 dummy

#map
scoreboard objectives add tripwire dummy

#regeneration
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add walkOnWater minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add walkUnderWater minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add running dummy
scoreboard objectives add walking dummy
scoreboard objectives add crouching dummy
scoreboard objectives add notMoving dummy
scoreboard objectives add runningCheck dummy
scoreboard objectives add walkingCheck dummy
scoreboard objectives add runningRegen dummy
scoreboard objectives add walkingRegen dummy
scoreboard objectives add crouchingRegen dummy
scoreboard objectives add notMovingRegen dummy

scoreboard objectives add tempTime dummy
scoreboard objectives add leaveGame minecraft.custom:minecraft.leave_game
scoreboard objectives add playTime minecraft.custom:minecraft.play_time


scoreboard objectives add carrotOnAStick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add fungusOnAStick minecraft.used:minecraft.warped_fungus_on_a_stick

scoreboard objectives add Pos0 dummy
scoreboard objectives add Pos1 dummy
scoreboard objectives add Pos2 dummy

#bobo
scoreboard objectives add jJ dummy
scoreboard objectives add sS dummy
scoreboard objectives add sSCD dummy
scoreboard objectives add bB dummy
scoreboard objectives add bBCD dummy
scoreboard objectives add dD dummy
scoreboard objectives add dDCD dummy
scoreboard objectives add dDV dummy
scoreboard objectives add dDG dummy
scoreboard objectives add tT dummy
scoreboard objectives add gG dummy
scoreboard objectives add gGCD dummy
scoreboard objectives add gGTimer dummy
scoreboard objectives add hP dummy
scoreboard objectives add hPCD dummy
scoreboard objectives add hPDropped minecraft.dropped:minecraft.baked_potato
scoreboard objectives add hPTimer dummy
scoreboard objectives add tT dummy
scoreboard objectives add tTCD killedByTeam.gold
scoreboard objectives add hunterCountNear dummy

#bobo objective


#impostor
scoreboard objectives add kill dummy
scoreboard objectives add killCD dummy
scoreboard objectives add eMeeting dummy
scoreboard objectives add eMeetingCD dummy
scoreboard objectives add eMeetingV dummy
scoreboard objectives add vent dummy
scoreboard objectives add ventCD dummy
scoreboard objectives add ventNear dummy
scoreboard objectives add blueVent dummy
scoreboard objectives add blueVentCount dummy
scoreboard objectives add blueVentNear dummy
scoreboard objectives add redVent dummy
scoreboard objectives add redVentCount dummy
scoreboard objectives add redVentNear dummy
scoreboard objectives add destroyVent dummy
scoreboard objectives add destroyVentCD dummy
scoreboard objectives add o2 dummy
scoreboard objectives add o2CD dummy
scoreboard objectives add o2V dummy
scoreboard objectives add o2Count dummy
scoreboard objectives add lights dummy
scoreboard objectives add lightsCD dummy
scoreboard objectives add lightsV dummy
scoreboard objectives add lightsCount dummy

#teemo
scoreboard objectives add toxicShot dummy
scoreboard objectives add toxicShotCD dummy
scoreboard objectives add toxicShotV dummy
scoreboard objectives add blindingDart dummy
scoreboard objectives add blindingDartCD dummy
scoreboard objectives add moveQuick dummy
scoreboard objectives add moveQuickCD dummy
scoreboard objectives add moveQuickV dummy
scoreboard objectives add noxiousTrap dummy
scoreboard objectives add noxiousTrapCD dummy
scoreboard objectives add noxiousTrapTimer dummy
scoreboard objectives add recall dummy
scoreboard objectives add recallCD dummy
scoreboard objectives add recallV dummy
scoreboard objectives add gWarfare dummy
scoreboard objectives add gWarfareV dummy
scoreboard objectives add damageTeemo minecraft.custom:minecraft.damage_taken
scoreboard objectives add crouchTeemo minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add sprintTeemo minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add swimTeemo minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walkTeemo minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add water1Teemo minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add water2Teemo minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add crossbowTeemo minecraft.used:minecraft.crossbow

#boba fett
scoreboard objectives add jetpackFuelUsed minecraft.used:minecraft.firework_rocket
scoreboard objectives add jetpackFuel dummy
scoreboard objectives add jetpackFuelCD dummy
scoreboard objectives add ee-3 dummy
scoreboard objectives add ee-3CD dummy
scoreboard objectives add ee-3Burst dummy
scoreboard objectives add flamethrower dummy
scoreboard objectives add flamethrowerCD dummy
scoreboard objectives add flamethrower1 dummy
scoreboard objectives add flamethrower2 dummy
scoreboard objectives add flamethrower3 dummy
scoreboard objectives add cRocket dummy
scoreboard objectives add cRocketCD dummy
scoreboard objectives add rBarrage dummy
scoreboard objectives add rBarrageCD dummy
scoreboard objectives add rBarrageV dummy
scoreboard objectives add rBarrageBurst dummy

#jett
scoreboard objectives add jettSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add dash dummy
scoreboard objectives add updraft dummy
scoreboard objectives add dashHolding dummy
scoreboard objectives add updraftHolding dummy
scoreboard objectives add dashCD dummy
scoreboard objectives add updraftCD dummy
scoreboard objectives add bladeStorm dummy
scoreboard objectives add bladeStormCD dummy
scoreboard objectives add bladeStormV dummy
scoreboard objectives add marshal dummy
scoreboard objectives add marshalCD dummy
scoreboard objectives add marshal1 dummy
scoreboard objectives add marshal2 dummy
scoreboard objectives add marshal3 dummy
scoreboard objectives add marshalMessage dummy
scoreboard players set @a dashCD 0
scoreboard players set @a updraftCD 0
scoreboard players set @a marshal1 0
scoreboard players set @a marshal2 0
scoreboard players set @a marshal3 0

#jotaro
scoreboard objectives add timeStop dummy
scoreboard objectives add timeStopCD dummy
scoreboard objectives add timeStopV dummy
scoreboard objectives add timeStopTimer dummy
scoreboard objectives add timeStopSound minecraft.custom:minecraft.play_time
scoreboard objectives add ora dummy
scoreboard objectives add oraCD dummy
scoreboard objectives add oraV dummy
scoreboard objectives add starFinger dummy
scoreboard objectives add starFingerCD dummy

#guts
scoreboard objectives add berserkerArmor dummy
scoreboard objectives add berserkerArmorCD dummy
scoreboard objectives add berserkerArmorV dummy
scoreboard objectives add berserkerArmorDR minecraft.custom:minecraft.damage_resisted
scoreboard objectives add cannonArm dummy
scoreboard objectives add cannonArmCD dummy
scoreboard objectives add cannonArmUsed minecraft.used:minecraft.crossbow
scoreboard objectives add rCrossbow dummy
scoreboard objectives add rCrossbowVisual dummy
scoreboard objectives add rCrossbowCD dummy
scoreboard objectives add dragonslayer minecraft.used:minecraft.netherite_sword
scoreboard objectives add lastPlayer dummy

#hacker
scoreboard objectives add hunterCount dummy
scoreboard objectives add hunterNoDogCount dummy
scoreboard objectives add hunterCount.5 dummy
scoreboard objectives add battery dummy
scoreboard objectives add batteryCD dummy
scoreboard objectives add batterySpeed dummy
scoreboard objectives add eRicochetB dummy
scoreboard objectives add eRicochetD dummy
scoreboard objectives add eRicochetR dummy
scoreboard objectives add eRicochetRT dummy
scoreboard players set constant eRicochetB 10
scoreboard players set constant eRicochetD 400
scoreboard objectives add rewireLocationCD dummy
scoreboard objectives add rewireLocationV dummy

#mori
scoreboard objectives add yeoui dummy
scoreboard objectives add yeouiCD dummy
scoreboard objectives add geundoowun dummy
scoreboard objectives add geundoowunCD dummy
scoreboard objectives add geundoowunV dummy
scoreboard objectives add geundoowunTimer dummy
scoreboard objectives add jeahbongchim dummy
scoreboard objectives add jeahbongchimCD dummy
scoreboard objectives add jeahbongchimV dummy
scoreboard objectives add yongpyo dummy
scoreboard objectives add yongpyoCD dummy
scoreboard objectives add yongpyoV dummy
scoreboard objectives add switchMode dummy

#officer
scoreboard objectives add dogAlive dummy
scoreboard objectives add dogDamage dummy
scoreboard objectives add dogHealth dummy
scoreboard objectives add spyglassGlowing dummy
scoreboard objectives add spyglass1 dummy
scoreboard objectives add spyglass2 dummy
scoreboard objectives add spyglass3 dummy
scoreboard objectives add sit dummy
scoreboard objectives add goodDog dummy
scoreboard objectives add goodDogCD dummy
scoreboard objectives add goodDogV dummy
scoreboard objectives add smell dummy
scoreboard objectives add smellCD dummy
scoreboard objectives add sonicHowl dummy
scoreboard objectives add sonicHowlCD dummy
scoreboard objectives add sonicHowlV dummy
scoreboard objectives add touchStone dummy
scoreboard objectives add touchStoneCD dummy

#pepsi man
scoreboard objectives add pepsiSmash dummy
scoreboard objectives add pepsiSmashCD dummy
scoreboard objectives add pepsiSmashV dummy
scoreboard objectives add pepsiSmashD minecraft.custom:minecraft.damage_dealt
scoreboard objectives add pepsiSplash dummy
scoreboard objectives add pepsiSplashCD dummy
scoreboard objectives add pepsiSplashV dummy
scoreboard objectives add pepsi dummy
scoreboard objectives add pepsiCD dummy
scoreboard objectives add pepsiV dummy
scoreboard objectives add pepsiCreation dummy
scoreboard objectives add pepsiCreationCD dummy
scoreboard objectives add pepsiNoCan dummy
scoreboard objectives add pepsiCanCount dummy

#vaccinator
scoreboard objectives add fabricationCD dummy
scoreboard objectives add vIdentifier dummy
scoreboard objectives add vIdentifierCD dummy
scoreboard objectives add uConcoction dummy
scoreboard objectives add uConcoctionCD dummy
scoreboard objectives add uConcoctionV dummy
scoreboard objectives add bNeedle minecraft.used:minecraft.fishing_rod
scoreboard objectives add bCanister dummy
scoreboard objectives add tracker dummy

#bobo objectives
scoreboard objectives add objectiveSneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add objectiveEgg minecraft.used:minecraft.egg
scoreboard objectives add objectiveDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add objectiveWool minecraft.mined:minecraft.brown_wool
scoreboard objectives add objectiveEye minecraft.used:minecraft.ender_eye
scoreboard objectives add objectiveCalcite minecraft.mined:minecraft.calcite
scoreboard objectives add objectiveLighter minecraft.used:minecraft.flint_and_steel
scoreboard objectives add objectiveShovel minecraft.used:minecraft.netherite_shovel
scoreboard objectives add objectiveShears minecraft.used:minecraft.shears
scoreboard objectives add objectiveBook minecraft.used:minecraft.writable_book
scoreboard objectives add objectiveJump minecraft.custom:minecraft.jump
scoreboard objectives add objectiveHarambe dummy
scoreboard objectives add objectiveSans minecraft.custom:minecraft.play_time
scoreboard objectives add objectiveAbility dummy
scoreboard objectives add objectiveDamageT minecraft.custom:minecraft.damage_taken
scoreboard objectives add objectivePotion minecraft.used:minecraft.potion
scoreboard objectives add objectiveFish minecraft.custom:minecraft.fish_caught
scoreboard objectives add objectiveBell minecraft.custom:minecraft.bell_ring
scoreboard objectives add objectiveShower dummy
scoreboard objectives add objectiveSpike minecraft.used:minecraft.tnt
scoreboard objectives add objectiveFire minecraft.mined:minecraft.fire
scoreboard objectives add objectiveSFire minecraft.mined:minecraft.soul_fire
scoreboard objectives add objectiveGApple minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add objectiveS dummy
scoreboard objectives add objectiveEC dummy
scoreboard objectives add objectiveMC dummy
scoreboard objectives add objectiveHC dummy
scoreboard objectives add objectiveE1 dummy
scoreboard objectives add objectiveE2 dummy
scoreboard objectives add objectiveE3 dummy
scoreboard objectives add objectiveE4 dummy
scoreboard objectives add objectiveE5 dummy
scoreboard objectives add objectiveE6 dummy
scoreboard objectives add objectiveE7 dummy
scoreboard objectives add objectiveE8 dummy
scoreboard objectives add objectiveE9 dummy
scoreboard objectives add objectiveE10 dummy
scoreboard objectives add objectiveE11 dummy
scoreboard objectives add objectiveE12 dummy
scoreboard objectives add objectiveEList dummy
scoreboard objectives add objectiveM1 dummy
scoreboard objectives add objectiveM2 dummy
scoreboard objectives add objectiveM3 dummy
scoreboard objectives add objectiveM4 dummy
scoreboard objectives add objectiveM5 dummy
scoreboard objectives add objectiveM6 dummy
scoreboard objectives add objectiveM7 dummy
scoreboard objectives add objectiveM8 dummy
scoreboard objectives add objectiveM9 dummy
scoreboard objectives add objectiveM10 dummy
scoreboard objectives add objectiveMList dummy
scoreboard objectives add objectiveH1 dummy
scoreboard objectives add objectiveH2 dummy
scoreboard objectives add objectiveH3 dummy
scoreboard objectives add objectiveH4 dummy
scoreboard objectives add objectiveH5 dummy
scoreboard objectives add objectiveHList dummy
scoreboard objectives add objectiveHW dummy
scoreboard objectives add objectiveL dummy
scoreboard objectives add objectiveLT dummy
scoreboard players set constant objectiveLT 10
scoreboard objectives add objectiveLPT dummy
scoreboard objectives add objectiveSLT dummy
scoreboard objectives add objectiveNotify dummy

#random scoreboard
scoreboard objectives add lcg dummy
scoreboard players set constant lcg 1103515245
execute as @a run function cb:random/reset
scoreboard objectives add randomN dummy
scoreboard objectives add randomR dummy
scoreboard objectives add randomM dummy
scoreboard objectives add randomT dummy
scoreboard players set constant randomR 64
scoreboard players set constant randomM 63

scoreboard objectives add randomOutcome dummy

worldborder warning distance 0
worldborder center 96.0 -288.0
forceload add -80 -465 95 -113
forceload add 96 -465 271 -113

team add Bobo
team modify Bobo color gold
team modify Bobo collisionRule pushOtherTeams
team modify Bobo friendlyFire false
team modify Bobo nametagVisibility hideForOtherTeams
team modify Bobo seeFriendlyInvisibles true
team add BoboAlt
team modify BoboAlt color gold
team add Hunters
team modify Hunters color dark_red
team modify Hunters prefix [{"text":"Hunter ","color":"dark_red","bold":true},{"text":"| ","color":"white","bold":false}]
team modify Lobby nametagVisibility always
team modify Hunters seeFriendlyInvisibles true
team add Lobby
team modify Lobby color gray
team modify Lobby collisionRule never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility hideForOtherTeams
team modify Lobby seeFriendlyInvisibles true
team add noCollide
team modify noCollide collisionRule never
team add red
team modify red color red
team add yellow
team modify yellow color yellow

bossbar add bobo {"text":"Bobo","color":"gold","bold":true,"italic":false}
bossbar set minecraft:bobo color yellow
bossbar set minecraft:bobo style progress
bossbar set minecraft:bobo visible true
bossbar add initial_timer {"text":"Time Until Release","color":"green","bold":true,"italic":false}
bossbar set minecraft:initial_timer color green
bossbar set minecraft:initial_timer style progress
bossbar set minecraft:initial_timer visible false
bossbar add timer {"text":"Time Remaining","color":"green","bold":true,"italic":false}
bossbar set minecraft:timer color green
bossbar set minecraft:timer style progress
bossbar set minecraft:timer visible false
bossbar add last_timer {"text":"Time Left","color":"red","bold":true,"italic":false}
bossbar set minecraft:last_timer color red
bossbar set minecraft:last_timer style progress
bossbar set minecraft:last_timer visible false
bossbar add minecraft:post_timer {"text":"Game Ended","color":"yellow","bold":true,"italic":false}
bossbar set minecraft:post_timer color yellow
bossbar set minecraft:post_timer style notched_10
bossbar set minecraft:post_timer visible false

gamerule keepInventory true
gamerule naturalRegeneration false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doMobLoot false
gamerule doImmediateRespawn true

schedule function cb:main5t 5t
schedule function cb:main10t 10t
schedule function cb:main20t 20t

say Finished reloading.