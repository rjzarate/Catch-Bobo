execute if score @s pepsiSmash matches ..0 if score @s pepsiSmashCD matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_smash/reset
execute if score @s pepsiSmash matches ..0 unless score @s pepsiSmashCD matches ..0 run scoreboard players remove @s pepsiSmashCD 1

execute if score @s pepsiSplash matches ..0 if score @s pepsiSplashCD matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_splash/reset
execute if score @s pepsiSplash matches ..0 unless score @s pepsiSplashCD matches ..0 run scoreboard players remove @s pepsiSplashCD 1

execute if score @s pepsi matches ..0 if score @s pepsiCD matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi/reset
execute if score @s pepsi matches ..0 unless score @s pepsiCD matches ..0 run scoreboard players remove @s pepsiCD 1

execute if score @s pepsiCreation matches ..1 if score @s pepsiCreationCD matches ..0 run function cb:game/during/player/skills/hunters/pepsi_man/pepsi_creation/reset
execute if score @s pepsiCreation matches ..1 unless score @s pepsiCreationCD matches ..0 run scoreboard players remove @s pepsiCreationCD 1