execute if score @s droppedEnderEye matches 1.. run function orangutan:bobo/ability_swap/item_check


execute if entity @s[tag=!timeStoppee] run function orangutan:bobo/cooldown
execute if entity @s run function orangutan:bobo/refresh
execute if entity @s[tag=!timeStoppee] run function orangutan:bobo/fire_rate

#semi-auto ender eye activation
scoreboard players operation .rightClick enderEye = @s rightClick
scoreboard players set @s rightClick 0
execute if entity @s[advancements={orangutan:bobo=true},tag=!timeStoppee] if score .rightClick enderEye matches 0 run function orangutan:bobo/ability_directory
execute if entity @s[advancements={orangutan:bobo=true}] run scoreboard players set @s rightClick 1
execute if entity @s[advancements={orangutan:bobo=true}] run advancement revoke @s only orangutan:bobo

#active abilities
execute if score @s jackfruitJumper matches 1 run function orangutan:bobo/jackfruit_jumper/active
execute if score @s blindingBlueberryDuration matches 1.. run function orangutan:bobo/blinding_blueberry/active
execute if score @s durianDecoyDuration matches 1.. run function orangutan:bobo/durian_decoy/active

#notch apple activate
execute if score @s notchApple matches 1.. run function orangutan:bobo/notch_apple/activate

#starfruit swapper texture change (only if not in cd is holding it)
	execute if predicate orangutan:bobo/starfruit_swapper if score @s[tag=!timeStoppee] starfruitSwapperTangerineTeleporter matches 1.. run function orangutan:bobo/starfruit_swapper/animate

#holding fruit finder
	execute if score %10t universalTimer matches 0 if predicate orangutan:bobo/fruit_finder at @s run function orangutan:bobo/fruit_finder/activate

#damage taken
	execute if score @s boboDamageTaken >= .boboPermanentDamage gameStats run function orangutan:bobo/damage_taken/max_health

#banana blade kill
	execute if score @s bananaBladeKill matches 1.. run function orangutan:bobo/banana_blade/kill