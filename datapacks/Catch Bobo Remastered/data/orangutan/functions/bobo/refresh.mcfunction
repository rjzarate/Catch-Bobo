execute if score @s jackfruitJumperCD matches ..0 run function orangutan:bobo/zrefresh/jackfruit_jumper

execute if score @s blindingBlueberryDurianDecoyCD matches ..0 run function orangutan:bobo/zrefresh/blinding_blueberry_durian_decoy

execute if score @s guavaGrenadeHotPotatoPlanterCD matches ..0 run function orangutan:bobo/zrefresh/guava_grenade_hot_potato_planter
execute if score @s guavaGrenadeHotPotatoPlanterAmmo < .maxAmmo guavaGrenadeHotPotatoPlanterStats unless score @s guavaGrenadeHotPotatoPlanterCD matches 1.. run scoreboard players operation @s guavaGrenadeHotPotatoPlanterAmmo += .ammoCooldown guavaGrenadeHotPotatoPlanterStats
execute if score @s guavaGrenadeHotPotatoPlanterAmmo < .maxAmmo guavaGrenadeHotPotatoPlanterStats unless score @s guavaGrenadeHotPotatoPlanterCD matches 1.. run scoreboard players operation @s guavaGrenadeHotPotatoPlanterCD += .cooldown20t guavaGrenadeHotPotatoPlanterStats

execute if score @s starfruitSwapperTangerineTeleporterCD matches ..0 run scoreboard players reset @s starfruitSwapperTangerineTeleporterCD