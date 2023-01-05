execute if predicate hunter:pepsi_man/pepsi_splash unless score @s pepsiSplashCD matches 1.. run function hunter:pepsi_man/pepsi_splash/activate

execute if predicate hunter:pepsi_man/pepsi if score @s pepsiChargeUp matches 1.. at @s run function hunter:pepsi_man/pepsi/deactivate
execute if predicate hunter:pepsi_man/pepsi unless score @s pepsiCD matches 1.. run function hunter:pepsi_man/pepsi/activate

execute if predicate hunter:pepsi_man/pepsi_creation if score @s pepsiCreationAmmo matches 1.. at @s if entity @a[team=Hunters,gamemode=!spectator,distance=..20,tag=!hasPepsiCan] run function hunter:pepsi_man/pepsi_creation/activate