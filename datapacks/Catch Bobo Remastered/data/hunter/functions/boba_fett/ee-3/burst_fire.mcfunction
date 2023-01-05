function general:get_stats
scoreboard players remove @s ee-3Ammo 1
execute if score @s ee-3Ammo < .maxAmmo ee-3Stats unless score @s ee-3CD matches 1.. run scoreboard players operation @s ee-3CD += .cooldown20t ee-3Stats

#fire rate
scoreboard players set #fireRate stats 2000
scoreboard players operation #fireRate stats /= .fireRate stats
function general:fire_rate_change
scoreboard players operation @s ee-3FireRate = #fireRate stats

#burst fire
scoreboard players remove @s ee-3Burst 1
scoreboard players set @s ee-3BurstFireRate 5

##range give in slowcast/set
#scoreboard players operation .range stats *= #2 constant
#scoreboard players operation #range ee-3Stats = .range stats


#damage
scoreboard players operation #damage temp = .rangeDamage stats
function general:apply/damage/scoreboard



execute at @s run playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2

execute at @s anchored eyes positioned ^ ^ ^1 run function hunter:boba_fett/ee-3/slowcast/start

