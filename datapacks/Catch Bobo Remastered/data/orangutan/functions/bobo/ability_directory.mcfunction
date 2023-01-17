execute if predicate orangutan:bobo/jackfruit_jumper unless score @s jackfruitJumperCD matches 1.. run function orangutan:bobo/jackfruit_jumper/activate
execute if predicate orangutan:bobo/blinding_blueberry unless score @s blindingBlueberryDurianDecoyCD matches 1.. run function orangutan:bobo/blinding_blueberry/activate
execute if predicate orangutan:bobo/durian_decoy unless score @s blindingBlueberryDurianDecoyCD matches 1.. run function orangutan:bobo/durian_decoy/activate

execute if predicate orangutan:bobo/guava_grenade if score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. unless score @s guavaGrenadeFireRate matches 1.. run function orangutan:bobo/guava_grenade/activate
execute if predicate orangutan:bobo/hot_potato_planter if score @s guavaGrenadeHotPotatoPlanterAmmo matches 1.. run function orangutan:bobo/hot_potato_planter/activate

execute if predicate orangutan:bobo/starfruit_swapper if score @s starfruitSwapperTangerineTeleporter matches 1.. unless score .hidingPhase game matches 1 unless entity @a[tag=teleporter] if predicate general:on_ground at @s unless block ~ ~ ~ minecraft:lava run function orangutan:bobo/starfruit_swapper/activate
execute if predicate orangutan:bobo/tangerine_teleporter if score @s starfruitSwapperTangerineTeleporter matches 1.. unless score .hidingPhase game matches 1 run function orangutan:bobo/tangerine_teleporter/activate
