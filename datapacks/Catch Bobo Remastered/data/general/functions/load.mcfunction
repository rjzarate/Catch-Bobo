scoreboard objectives add droppedEnderEye minecraft.dropped:minecraft.ender_eye
scoreboard objectives add universalTimer dummy
scoreboard objectives add deathCount deathCount
scoreboard objectives add health health
scoreboard objectives add maxHealth dummy

#uuid
scoreboard objectives add uuid dummy
scoreboard objectives add uuidLink dummy

#gamerules
gamerule keepInventory true
gamerule naturalRegeneration false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doFireTick false
gamerule doEntityDrops false
gamerule doMobLoot false
gamerule doImmediateRespawn true

#gameplay
scoreboard objectives add gameStats dummy
#preset
	function game:preset/1regular
#actual game stats
	scoreboard objectives add game dummy

#bossbars
	#bossbar add initial_timer {"text":"Time Until Release","color":"green","bold":true,"italic":false}
	#bossbar set minecraft:initial_timer color green
	#bossbar set minecraft:initial_timer style progress
	#bossbar set minecraft:initial_timer visible false
	bossbar add timer {"text":"Time Remaining","color":"green","bold":true,"italic":false}
	#bossbar set minecraft:timer color green
	#bossbar set minecraft:timer style progress
	#bossbar set minecraft:timer visible false
	#bossbar add last_timer {"text":"Time Left","color":"red","bold":true,"italic":false}
	#bossbar set minecraft:last_timer color red
	#bossbar set minecraft:last_timer style progress
	#bossbar set minecraft:last_timer visible false
	#bossbar add minecraft:post_timer {"text":"Game Ended","color":"yellow","bold":true,"italic":false}
	#bossbar set minecraft:post_timer color yellow
	#bossbar set minecraft:post_timer style notched_10
	#bossbar set minecraft:post_timer visible false


#healing
scoreboard objectives add healing dummy
scoreboard objectives add healingApply dummy
scoreboard objectives add healingInCombat dummy
scoreboard objectives add healingDamageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add healingMoving dummy
scoreboard objectives add healingMovingCrouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add healingMovingClimb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add healingMovingFallDistance dummy
scoreboard objectives add healingMovingSprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add healingMovingSwim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add healingMovingWalk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add healingMovingWater1 minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add healingMovingWater2 minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add healingLowHealth dummy
data modify storage motion Motion set from entity @p Motion
#how many ticks until you get the heal
scoreboard players set .base healingApply 20
scoreboard players set .inCombat healingApply 60
scoreboard players set .moving healingApply 30
scoreboard players set .lowHealth healingApply -10
scoreboard players set .nearHunter healingApply 10
#duration and requirement to get the heal
scoreboard players set .duration healingInCombat 300
scoreboard players set .duration healingMoving 50
scoreboard players set .lowHealthRequirement healingApply 15


#constant numbers for scoreboard math
scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set #0 constant 0
scoreboard players set #2 constant 2
scoreboard players set #4 constant 4
scoreboard players set #5 constant 5
scoreboard players set #6 constant 6
scoreboard players set #8 constant 8
scoreboard players set #10 constant 10
scoreboard players set #11 constant 11
scoreboard players set #12 constant 12
scoreboard players set #13 constant 13
scoreboard players set #14 constant 14
scoreboard players set #15 constant 15
scoreboard players set #20 constant 20
scoreboard players set #25 constant 25
scoreboard players set #100 constant 100
scoreboard players set #1000 constant 1000
scoreboard players set #2000 constant 2000

#right click detection
scoreboard objectives add enderEye dummy
scoreboard objectives add actionbarCD dummy
scoreboard objectives add rightClick dummy
scoreboard objectives add visualFix dummy
scoreboard players set .global visualFix 1


#item stats to scoreboards, temp variables, and
scoreboard objectives add stats dummy
scoreboard objectives add temp dummy

#entity data objectives
scoreboard objectives add SelectedItemSlot dummy
scoreboard objectives add Pos dummy
scoreboard objectives add OnGround dummy

#item modifiers
data modify storage minecraft:enchantment noGlint set value []
data modify storage minecraft:enchantment glint set value [{}]
data modify storage minecraft:compass LoadstonePos set value {X: 0,Y: 0,Z: 0}


#potion effects -> scoreboards (for Jotaro's time stop)
scoreboard objectives add blindness dummy
scoreboard objectives add darkness dummy
scoreboard objectives add dolphinsGrace dummy
scoreboard objectives add fireResistance dummy
scoreboard objectives add glowing dummy
scoreboard objectives add haste1 dummy
scoreboard objectives add haste2 dummy
scoreboard objectives add haste3 dummy
scoreboard objectives add haste4 dummy
scoreboard objectives add haste5 dummy
scoreboard objectives add invisibility dummy
scoreboard objectives add jumpBoost1 dummy
scoreboard objectives add jumpBoost2 dummy
scoreboard objectives add jumpBoost3 dummy
scoreboard objectives add jumpBoost4 dummy
scoreboard objectives add jumpBoost5 dummy
scoreboard objectives add jumpBoost128 dummy
scoreboard objectives add levitation1 dummy
scoreboard objectives add levitation11 dummy
scoreboard objectives add levitation15 dummy
#luck 50 = hunter team immunity, luck 100 = orangutan team immunity
scoreboard objectives add luck50 dummy
scoreboard objectives add luck100 dummy
scoreboard objectives add miningFatigue1 dummy
scoreboard objectives add miningFatigue2 dummy
scoreboard objectives add miningFatigue3 dummy
scoreboard objectives add miningFatigue4 dummy
scoreboard objectives add miningFatigue5 dummy
scoreboard objectives add nausea dummy
scoreboard objectives add resistance1 dummy
scoreboard objectives add resistance2 dummy
scoreboard objectives add resistance3 dummy
scoreboard objectives add resistance4 dummy
scoreboard objectives add resistance5 dummy
scoreboard objectives add slowFalling dummy
scoreboard objectives add slowness1 dummy
scoreboard objectives add slowness2 dummy
scoreboard objectives add slowness3 dummy
scoreboard objectives add slowness4 dummy
scoreboard objectives add slowness5 dummy
scoreboard objectives add slowness10 dummy
scoreboard objectives add slowness100 dummy
scoreboard objectives add strength1 dummy
scoreboard objectives add strength2 dummy
scoreboard objectives add strength3 dummy
scoreboard objectives add strength4 dummy
scoreboard objectives add strength5 dummy
scoreboard objectives add speed1 dummy
scoreboard objectives add speed2 dummy
scoreboard objectives add speed3 dummy
scoreboard objectives add speed4 dummy
scoreboard objectives add speed5 dummy
scoreboard objectives add waterBreathing dummy
scoreboard objectives add weakness1 dummy
scoreboard objectives add weakness2 dummy
scoreboard objectives add weakness3 dummy
scoreboard objectives add weakness4 dummy
scoreboard objectives add weakness5 dummy
scoreboard objectives add weakness100 dummy
#different more complicated effects to code
scoreboard objectives add absorption dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add regeneration1 dummy
scoreboard objectives add regeneration2 dummy
scoreboard objectives add regeneration3 dummy
scoreboard objectives add regeneration4 dummy
scoreboard objectives add poison dummy
scoreboard objectives add poison1 dummy
scoreboard objectives add poison2 dummy
scoreboard objectives add poison3 dummy
scoreboard objectives add poison4 dummy
scoreboard objectives add poison5 dummy
scoreboard objectives add wither dummy
scoreboard objectives add wither1 dummy
scoreboard objectives add wither2 dummy
scoreboard objectives add wither3 dummy
scoreboard objectives add wither4 dummy
scoreboard objectives add wither5 dummy
scoreboard objectives add effectClear dummy

#universal statistics scoreboard check (resets at the end) (USE ONLY ONCE FOR EACH KIT)
scoreboard objectives add crouch minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add climb minecraft.custom:minecraft.climb_one_cm
scoreboard objectives add fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add water1 minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add water2 minecraft.custom:minecraft.walk_under_water_one_cm
scoreboard objectives add moving dummy

#swap
scoreboard objectives add swapCD dummy

#bobo
scoreboard objectives add jackfruitJumper dummy
scoreboard objectives add jackfruitJumperCD dummy
scoreboard objectives add blindingBlueberryDuration dummy
scoreboard objectives add durianDecoyGlowing dummy
scoreboard objectives add durianDecoyDuration dummy
scoreboard objectives add blindingBlueberryDurianDecoyCD dummy
scoreboard objectives add SelectedItemSlotDurianDecoy dummy
scoreboard objectives add guavaGrenadeFuse dummy
scoreboard objectives add guavaGrenadeFireRate dummy
scoreboard objectives add hotPotatoPlanterFuse dummy
scoreboard objectives add hotPotatoDropped minecraft.dropped:minecraft.baked_potato
scoreboard objectives add guavaGrenadeHotPotatoPlanterAmmo dummy
scoreboard objectives add guavaGrenadeHotPotatoPlanterStats dummy
scoreboard objectives add guavaGrenadeHotPotatoPlanterCD dummy
scoreboard objectives add starfruitSwapperTangerineTeleporter dummy
scoreboard objectives add notchApple minecraft.used:minecraft.enchanted_golden_apple

#impostor
scoreboard objectives add killCD dummy
scoreboard objectives add killStats dummy
scoreboard objectives add impostorStunDuration dummy
scoreboard objectives add impostorStunRevive dummy
scoreboard objectives add reportBodyCD dummy
scoreboard objectives add reportBodyDuration dummy
scoreboard objectives add reportBodyChargeUp dummy
scoreboard objectives add reportBodyStats dummy
scoreboard objectives add ventCD dummy
scoreboard objectives add ventLifespan dummy
scoreboard objectives add ventHealth dummy
scoreboard objectives add ventOldest dummy
scoreboard objectives add createVentCD dummy
scoreboard objectives add sabotageCD dummy
scoreboard objectives add sabotageDuration dummy
scoreboard objectives add sabotageChargeUp dummy
scoreboard objectives add sabotageLifespan dummy
scoreboard objectives add sabotageStats dummy

#purple guy
scoreboard objectives add phoneIAlwaysComeBackCD dummy
scoreboard objectives add phoneIAlwaysComeBackAmmo dummy
scoreboard objectives add phoneIAlwaysComeBackStats dummy
scoreboard objectives add remnantMachineCD dummy
scoreboard objectives add remnantMachineAmmo dummy
scoreboard objectives add remnantMachineLifespan dummy
scoreboard objectives add remnantMachineGeneration dummy
scoreboard objectives add remnantMachineStats dummy
scoreboard objectives add animatronicStats dummy
scoreboard objectives add quirkyAnimatronicsFlamingCorruptionCD dummy
scoreboard objectives add quirkyAnimatronicsFlamingCorruptionDuration dummy
scoreboard objectives add quirkyAnimatronicsFlamingCorruptionStats dummy
scoreboard objectives add 12am5amCD dummy
scoreboard objectives add purpleGuyTransformChargeUp dummy
scoreboard objectives add purpleGuyTransformStats dummy
scoreboard objectives add phoneIAlwaysComeBackSlot dummy
scoreboard objectives add quirkyAnimatronicsFlamingCorruptionSlot dummy
scoreboard objectives add 12am5amSlot dummy
scoreboard objectives add purpleGuyTransformSlot dummy

#teemo
scoreboard objectives add toxicShotCD dummy
scoreboard objectives add toxicShotAmmo dummy
scoreboard objectives add toxicShotStats dummy
scoreboard objectives add toxicShotFireRate dummy
scoreboard objectives add blindingDartCD dummy
scoreboard objectives add moveQuickCD dummy
scoreboard objectives add moveQuickDuration dummy
scoreboard objectives add noxiousTrapCD dummy
scoreboard objectives add noxiousTrapAmmo dummy
scoreboard objectives add noxiousTrapStats dummy
scoreboard objectives add noxiousTrapDuration dummy
scoreboard objectives add recallCD dummy
scoreboard objectives add recallStats dummy
scoreboard objectives add recallChargeUp dummy
scoreboard objectives add recallDamage minecraft.custom:minecraft.damage_taken
scoreboard objectives add recallCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add guerrillaWarfare dummy

#boba fett
scoreboard objectives add ee-3CD dummy
scoreboard objectives add ee-3Ammo dummy
scoreboard objectives add ee-3FireRate dummy
scoreboard objectives add ee-3Damage dummy
scoreboard objectives add ee-3Range dummy
scoreboard objectives add ee-3Iteration dummy
scoreboard objectives add ee-3Burst dummy
scoreboard objectives add ee-3BurstFireRate dummy
scoreboard objectives add ee-3Stats dummy
scoreboard objectives add flamethrowerCD dummy
scoreboard objectives add flamethrowerAmmo dummy
scoreboard objectives add flamethrowerChargeDelay dummy
scoreboard objectives add flamethrowerFireRate dummy
scoreboard objectives add flamethrowerRange dummy
scoreboard objectives add flamethrowerLifespan dummy
scoreboard objectives add flamethrowerStats dummy
scoreboard objectives add concussionRocketCD dummy
scoreboard objectives add concussionRocketRange dummy
scoreboard objectives add concussionRocketStats dummy
scoreboard objectives add rocketBarrageCD dummy
scoreboard objectives add rocketBarrageRange dummy
scoreboard objectives add rocketBarrageDamage dummy
scoreboard objectives add rocketBarrageBurst dummy
scoreboard objectives add rocketBarrageBurstFireRate dummy
scoreboard objectives add rocketBarrageStats dummy
scoreboard objectives add jetpackFuelUsed minecraft.used:minecraft.firework_rocket
scoreboard objectives add jetpackFuelCD dummy
scoreboard objectives add jetpackFuelAmmo dummy
scoreboard objectives add jetpackFuel dummy
scoreboard objectives add jetpackFuelDelay dummy
scoreboard objectives add jetpackFuelSlot dummy
scoreboard objectives add jetpackFuelStats dummy

#guts
scoreboard objectives add dragonslayerDuration dummy
scoreboard objectives add leftArmModel dummy
scoreboard objectives add repeaterCrossbowCD dummy
scoreboard objectives add repeaterCrossbowAmmo dummy
scoreboard objectives add repeaterCrossbowStats dummy
scoreboard players set .animationFrames repeaterCrossbowStats 4
scoreboard objectives add repeaterCrossbowFireRate dummy
scoreboard objectives add repeaterCrossbowDamage dummy
scoreboard objectives add repeaterCrossbowRange dummy
scoreboard objectives add cannonArmCD dummy
scoreboard objectives add cannonArmRange dummy
scoreboard objectives add indomitableWillCD dummy
scoreboard objectives add indomitableWillDuration dummy
scoreboard objectives add indomitableWillStack dummy
scoreboard objectives add berserkerArmorCD dummy
scoreboard objectives add berserkerArmorDuration dummy
scoreboard objectives add berserkerArmorStats dummy
scoreboard objectives add berserkerArmorDamageResisted minecraft.custom:minecraft.damage_resisted

#hacker
scoreboard objectives add battery dummy
scoreboard objectives add hackerStats dummy
scoreboard objectives add trojanHorseDamage dummy
scoreboard objectives add trojanHorseRange dummy
scoreboard objectives add trojanMiniHorse dummy
scoreboard objectives add rootkitDuration dummy
scoreboard objectives add rootkitLifespan dummy
scoreboard objectives add rootkitStats dummy
scoreboard objectives add ransomwareRange dummy
scoreboard objectives add adwareLink dummy
scoreboard objectives add adwareDropped minecraft.dropped:minecraft.coal
scoreboard objectives add spywareDuration dummy

#jett
scoreboard objectives add marshalCD dummy
scoreboard objectives add marshalAmmo dummy
scoreboard objectives add marshalEquip dummy
scoreboard objectives add marshalScope dummy
scoreboard objectives add marshalRightClick dummy
scoreboard objectives add marshalStats dummy
scoreboard objectives add bladeStormCD dummy
scoreboard objectives add bladeStormAmmo dummy
scoreboard objectives add bladeStormEquip dummy
scoreboard objectives add bladeStormStats dummy
scoreboard objectives add tailwindCD dummy
scoreboard objectives add tailwindDuration dummy
scoreboard objectives add tailwindAmmo dummy
scoreboard objectives add tailwindStats dummy
scoreboard objectives add updraftCD dummy
scoreboard objectives add updraftDuration dummy
scoreboard objectives add updraftAmmo dummy
scoreboard objectives add updraftStats dummy

#jotaro
scoreboard objectives add starPlatinumPunchDuration dummy
scoreboard objectives add starPlatinumUppercutDuration dummy
scoreboard objectives add starFingerCD dummy
scoreboard objectives add oraCD dummy
scoreboard objectives add oraDuration dummy
scoreboard objectives add oraStats dummy
scoreboard objectives add timeStopCD dummy
scoreboard objectives add timeStopDuration dummy
scoreboard objectives add timeStopChargeUp dummy
scoreboard objectives add timeStopStats dummy

#mori
scoreboard objectives add yeouiCD dummy
scoreboard objectives add yeouiDuration dummy
scoreboard objectives add yeouiStats dummy
scoreboard objectives add geundoowunCD dummy
scoreboard objectives add geundoowunDuration dummy
scoreboard objectives add geundoowunBuff dummy
scoreboard objectives add geundoowunDebuff dummy
scoreboard objectives add thunderBreakerCD dummy
scoreboard objectives add thunderBreakerDuration dummy
scoreboard objectives add thunderBreakerShulker dummy
scoreboard objectives add noeseonChargeUp dummy
scoreboard objectives add noeseonCD dummy
scoreboard objectives add noeseonDuration dummy
scoreboard objectives add noeseonStats dummy
scoreboard objectives add yongpyoCD dummy
scoreboard objectives add yongpyoDuration dummy
scoreboard objectives add yongpyoPowerOrAcceleration dummy

#officer
scoreboard objectives add swapstickCD dummy
scoreboard objectives add swapstickDuration dummy
scoreboard objectives add clickerCD dummy
scoreboard objectives add orangutanClothCD dummy
scoreboard objectives add orangutanClothDuration dummy
scoreboard objectives add orangutanClothStats dummy
scoreboard objectives add dogWhistleCD dummy
scoreboard objectives add dogWhistleDuration dummy
scoreboard objectives add dogWhistleStats dummy
scoreboard objectives add canineEmbryoCD dummy
scoreboard objectives add dogHealth dummy
scoreboard objectives add dogDamageDuration dummy


#pepsi man
scoreboard objectives add pepsiPunchHunterDuration dummy
scoreboard objectives add pepsiPunchOrangutanDuration dummy
scoreboard objectives add pepsiPunchKnockback dummy
scoreboard objectives add pepsiSplashCD dummy
scoreboard objectives add pepsiSplashDuration dummy
scoreboard objectives add pepsiCD dummy
scoreboard objectives add pepsiDuration dummy
scoreboard objectives add pepsiChargeUp dummy
scoreboard objectives add pepsiStats dummy
scoreboard objectives add pepsiCreationCD dummy
scoreboard objectives add pepsiCreationAmmo dummy
scoreboard objectives add pepsiCreationStats dummy

#vaccinator
scoreboard objectives add vaccinatorEffect dummy
scoreboard objectives add syringeLauncherAmmo dummy
scoreboard objectives add syringeLauncherCD dummy
scoreboard objectives add syringeLauncherStats dummy
scoreboard objectives add syringeLauncherUsed minecraft.used:minecraft.bow
scoreboard objectives add overloadedBrewing dummy
scoreboard objectives add selfDiagnoseCD dummy
scoreboard objectives add selfDiagnoseDuration dummy
scoreboard objectives add unstableConcoction dummy
scoreboard objectives add unstableConcoctionCD dummy
scoreboard objectives add unstableConcoctionDuration dummy
scoreboard objectives add unstableConcoctionStats dummy

#teams
team add Orangutans
team modify Orangutans color gold
team modify Orangutans prefix [{"text":"O ","color":"gold","bold":true},{"text":"| ","color":"white","bold":false}]
team modify Orangutans collisionRule pushOtherTeams
team modify Orangutans friendlyFire false
team modify Orangutans nametagVisibility hideForOtherTeams
team modify Orangutans seeFriendlyInvisibles true
team add OrangutansAlt
team modify OrangutansAlt color gold
team add Hunters
team modify Hunters color dark_red
team modify Hunters prefix [{"text":"H ","color":"dark_red","bold":true},{"text":"| ","color":"white","bold":false}]
team modify Lobby nametagVisibility always
team modify Hunters seeFriendlyInvisibles true
team add Spectators
team modify Spectators color gray
team modify Spectators prefix [{"text":"S ","color":"gray","bold":true},{"text":"| ","color":"white","bold":false}]
team modify Spectators collisionRule never
team modify Spectators friendlyFire false
team modify Spectators nametagVisibility hideForOtherTeams
team modify Spectators seeFriendlyInvisibles true
team add Lobby
team modify Lobby color gray
team modify Lobby collisionRule never
team modify Lobby friendlyFire false
team modify Lobby nametagVisibility hideForOtherTeams
team modify Lobby seeFriendlyInvisibles true
team add noCollide
team modify noCollide collisionRule never
team add noCollideYellow
team modify noCollideYellow collisionRule never
team modify noCollideYellow color yellow
team add color_aqua
team modify color_aqua color aqua
team add color_dark_aqua
team modify color_dark_aqua color dark_aqua


#block that edits items, bat names
setblock 0 1 0 minecraft:oak_sign
setblock 0 0 0 minecraft:yellow_shulker_box
forceload add 0 0 0 0


say '[Finished Reloading].'