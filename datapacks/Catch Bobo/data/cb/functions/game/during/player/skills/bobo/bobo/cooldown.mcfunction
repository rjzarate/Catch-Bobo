execute if score @s sS matches ..0 if score @s sSCD matches ..0 run function cb:game/during/player/skills/bobo/bobo/starfruit_swapper/reset
execute if score @s sS matches ..0 unless score @s sSCD matches ..0 run scoreboard players remove @s sSCD 1

execute if score @s bB matches ..0 if score @s bBCD matches ..0 run function cb:game/during/player/skills/bobo/bobo/blinding_blueberry/reset
execute if score @s bB matches ..0 unless score @s bBCD matches ..0 run scoreboard players remove @s bBCD 1

execute if score @s dD matches ..0 if score @s dDCD matches ..0 run function cb:game/during/player/skills/bobo/bobo/durian_decoy/reset
execute if score @s dD matches ..0 unless score @s dDCD matches ..0 run scoreboard players remove @s dDCD 1

execute if score @s gG matches ..2 if score @s gGCD matches ..0 run function cb:game/during/player/skills/bobo/bobo/guava_grenade/reset
execute if score @s gG matches ..2 unless score @s gGCD matches ..0 run scoreboard players remove @s gGCD 1
execute unless score @s gGTimer matches ..-1 run scoreboard players remove @s gGTimer 1

execute if score @s hP matches ..0 if score @s hPCD matches ..0 run function cb:game/during/player/skills/bobo/bobo/hot_potato/reset
execute if score @s hP matches ..0 unless score @s hPCD matches ..0 run scoreboard players remove @s hPCD 1