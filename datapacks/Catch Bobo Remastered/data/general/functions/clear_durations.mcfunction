#bobo
scoreboard players set @s durianDecoyDuration 0

#impostor
scoreboard players set @s sabotageDuration 0
scoreboard players set @s sabotageChargeUp 0

#purple guy
scoreboard players set @s quirkyAnimatronicsFlamingCorruptionDuration 0

#teemo
scoreboard players set @s moveQuickDuration 0
scoreboard players set @s recallChargeUp 0

#boba fett

#hacker
scoreboard players set @s rootkitDuration 0
scoreboard players set @s spywareDuration 0

#jotaro
scoreboard players set @s oraDuration 0
scoreboard players set @s timeStopDuration 0
scoreboard players set @s timeStopChargeUp 0

#guts
scoreboard players set @s indomitableWillDuration 0
scoreboard players set @s berserkerArmorDuration 0

#officer
scoreboard players set @s orangutanClothDuration 0
scoreboard players set @s dogWhistleDuration 0

#pepsi man
scoreboard players set @s pepsiPunchHunterDuration 0
scoreboard players set @s pepsiPunchOrangutanDuration 0
scoreboard players set @s pepsiSplashDuration 0
scoreboard players set @s pepsiDuration 0

#jett
scoreboard players set @s tailwindDuration 0
scoreboard players set @s updraftDuration 0

#vaccinator
scoreboard players set @s selfDiagnoseDuration 0
scoreboard players set @s unstableConcoctionDuration 0

#mori
scoreboard players operation #uuid temp = @s uuid
execute as @e[type=minecraft:marker,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
execute as @e[type=minecraft:ghast,tag=geundoowun] if score @s uuidLink = #uuid temp run kill @s
scoreboard players set @s yeouiDuration 0
scoreboard players set @s geundoowunDuration 0
scoreboard players set @s thunderBreakerDuration 0
scoreboard players set @s noeseonDuration 0
scoreboard players set @s yongpyoDuration 0


#mobs linked
	scoreboard players operation .search uuidLink = @s uuid
	kill @e[type=minecraft:wolf,tag=dog,predicate=general:uuid_link_search]