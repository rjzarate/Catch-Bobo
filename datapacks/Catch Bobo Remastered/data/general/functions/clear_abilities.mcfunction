#bobo
scoreboard players reset @s jackfruitJumper
scoreboard players reset @s jackfruitJumperCD
scoreboard players reset @s durianDecoyGlowing
scoreboard players reset @s durianDecoyDuration
scoreboard players reset @s blindingBlueberryDurianDecoyCD
scoreboard players reset @s guavaGrenadeFuse
scoreboard players reset @s guavaGrenadeFireRate
scoreboard players reset @s hotPotatoPlanterFuse
scoreboard players reset @s guavaGrenadeHotPotatoPlanterCD

#impostor
scoreboard players reset @s killCD
scoreboard players reset @s ventCD
scoreboard players reset @s createVentCD
scoreboard players reset @s sabotageCD
scoreboard players reset @s sabotageDuration
scoreboard players reset @s sabotageChargeUp

#purple guy
scoreboard players reset @s phoneIAlwaysComeBackCD
scoreboard players reset @s remnantMachineCD
scoreboard players reset @s quirkyAnimatronicsFlamingCorruptionCD
scoreboard players reset @s quirkyAnimatronicsFlamingCorruptionDuration
scoreboard players reset @s 12am5amCD

#teemo
scoreboard players reset @s toxicShotCD
scoreboard players reset @s toxicShotAmmo
scoreboard players reset @s toxicShotFireRate
scoreboard players reset @s blindingDartCD
scoreboard players reset @s moveQuickCD
scoreboard players reset @s moveQuickDuration
scoreboard players reset @s noxiousTrapCD
scoreboard players reset @s recallCD
scoreboard players reset @s recallChargeUp

#boba fett
scoreboard players reset @s ee-3CD
scoreboard players reset @s flamethrowerCD
scoreboard players reset @s concussionRocketCD
scoreboard players reset @s rocketBarrageCD
scoreboard players reset @s jetpackFuelUsed
scoreboard players reset @s jetpackFuelCD

#hacker
scoreboard players reset @s rootkitDuration
scoreboard players reset @s spywareDuration

#jotaro
scoreboard players reset @s starFingerCD
scoreboard players reset @s oraCD
scoreboard players reset @s oraDuration
scoreboard players reset @s timeStopCD
scoreboard players reset @s timeStopDuration

#guts
scoreboard players reset @s repeaterCrossbowCD
scoreboard players reset @s cannonArmCD
scoreboard players reset @s indomitableWillCD
scoreboard players reset @s indomitableWillDuration
scoreboard players reset @s berserkerArmorCD
scoreboard players reset @s berserkerArmorDuration

#officer
scoreboard players reset @s swapstickCD
scoreboard players reset @s clickerCD
scoreboard players reset @s orangutanClothCD
scoreboard players reset @s orangutanClothDuration
scoreboard players reset @s dogWhistleCD
scoreboard players reset @s dogWhistleDuration
scoreboard players reset @s canineEmbryoCD

#pepsi man
scoreboard players reset @s pepsiPunchHunterDuration
scoreboard players reset @s pepsiPunchOrangutanDuration
scoreboard players reset @s pepsiSplashCD
scoreboard players reset @s pepsiSplashDuration
scoreboard players reset @s pepsiCD
scoreboard players reset @s pepsiDuration
scoreboard players reset @s pepsiChargeUp
scoreboard players reset @s pepsiCreationCD
scoreboard players reset @s pepsiCreationAmmo

#jett
scoreboard players reset @s marshalCD
scoreboard players reset @s bladeStormCD
scoreboard players reset @s tailwindCD
scoreboard players reset @s tailwindDuration
scoreboard players reset @s updraftCD
scoreboard players reset @s updraftDuration

#vaccinator
scoreboard players reset @s syringeLauncherCD
scoreboard players reset @s selfDiagnoseCD
scoreboard players reset @s selfDiagnoseDuration
scoreboard players reset @s unstableConcoctionCD
scoreboard players reset @s unstableConcoctionDuration

#mori
scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
scoreboard players reset @s yeouiCD
scoreboard players reset @s yeouiDuration
scoreboard players reset @s geundoowunCD
scoreboard players reset @s geundoowunDuration
scoreboard players reset @s thunderBreakerCD
scoreboard players reset @s thunderBreakerDuration
scoreboard players reset @s noeseonCD
scoreboard players reset @s noeseonDuration
scoreboard players reset @s yongpyoCD
scoreboard players reset @s yongpyoDuration


#mobs linked
	scoreboard players operation .search uuidLink = @s uuid
	kill @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search]