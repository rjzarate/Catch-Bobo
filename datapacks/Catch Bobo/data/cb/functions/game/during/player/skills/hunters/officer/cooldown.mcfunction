execute if score @s goodDog matches ..0 if score @s goodDogCD matches ..0 run function cb:game/during/player/skills/hunters/officer/good_dog/reset
execute if score @s goodDog matches ..0 unless score @s goodDogCD matches ..0 run scoreboard players remove @s goodDogCD 1

execute if score @s smell matches ..0 if score @s smellCD matches ..0 run function cb:game/during/player/skills/hunters/officer/smell/reset
execute if score @s smell matches ..0 unless score @s smellCD matches ..0 run scoreboard players remove @s smellCD 1

execute if score @s sonicHowl matches ..0 if score @s sonicHowlCD matches ..0 run function cb:game/during/player/skills/hunters/officer/sonic_howl/reset
execute if score @s sonicHowl matches ..0 unless score @s sonicHowlCD matches ..0 run scoreboard players remove @s sonicHowlCD 1


execute if score @s touchStone matches ..0 if score @s touchStoneCD matches ..0 run function cb:game/during/player/skills/hunters/officer/touch_stone/reset
execute if score @s touchStone matches ..0 if score @s dogAlive matches ..0 unless score @s touchStoneCD matches ..0 run scoreboard players remove @s touchStoneCD 1