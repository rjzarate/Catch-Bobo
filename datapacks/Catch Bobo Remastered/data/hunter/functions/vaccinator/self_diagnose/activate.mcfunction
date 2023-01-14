function general:get_stats
scoreboard players remove @s syringeLauncherAmmo 1
scoreboard players operation @s syringeLauncherAmmo -= @s overloadedBrewing
execute if score @s syringeLauncherAmmo < .maxAmmo syringeLauncherStats unless score @s syringeLauncherCD matches 1.. run scoreboard players operation @s syringeLauncherCD += .cooldown20t syringeLauncherStats
#adds glint
	item modify entity @s weapon.mainhand kit:enchantment/glint

execute at @s run function hunter:vaccinator/effect/apply_scoreboard
execute at @s run playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 1.75
execute if score @s syringeLauncherAmmo <= @s overloadedBrewing run clear @s minecraft:tipped_arrow{Tags:["syringe"]}

scoreboard players operation .cooldown stats *= #20 constant
scoreboard players operation @s selfDiagnoseCD = .cooldown stats

scoreboard players operation .duration stats = .effect1Duration vaccinatorEffect
execute if score .effect2Duration vaccinatorEffect > .duration stats run scoreboard players operation .duration stats = .effect2Duration vaccinatorEffect
execute if score .effect3Duration vaccinatorEffect > .duration stats run scoreboard players operation .duration stats = .effect3Duration vaccinatorEffect
execute if score .effect4Duration vaccinatorEffect > .duration stats run scoreboard players operation .duration stats = .effect4Duration vaccinatorEffect
execute if score .effect5Duration vaccinatorEffect > .duration stats run scoreboard players operation .duration stats = .effect5Duration vaccinatorEffect
scoreboard players operation @s selfDiagnoseCD += .duration stats
scoreboard players operation @s selfDiagnoseDuration = .duration stats