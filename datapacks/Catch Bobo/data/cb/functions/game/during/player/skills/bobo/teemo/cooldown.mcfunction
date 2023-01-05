execute if score @s toxicShot matches ..28 if score @s toxicShotCD matches ..0 run function cb:game/during/player/skills/bobo/teemo/toxic_shot/reset
execute if score @s toxicShot matches ..28 unless score @s toxicShotCD matches ..0 run scoreboard players remove @s toxicShotCD 1

execute if score @s blindingDart matches ..0 if score @s blindingDartCD matches ..0 run function cb:game/during/player/skills/bobo/teemo/blinding_dart/reset
execute if score @s blindingDart matches ..0 unless score @s blindingDartCD matches ..0 run scoreboard players remove @s blindingDartCD 1

execute if score @s moveQuick matches ..0 if score @s moveQuickCD matches ..0 run function cb:game/during/player/skills/bobo/teemo/move_quick/reset
execute if score @s moveQuick matches ..0 unless score @s moveQuickCD matches ..0 run scoreboard players remove @s moveQuickCD 1

execute if score @s noxiousTrap matches ..5 if score @s noxiousTrapCD matches ..0 run function cb:game/during/player/skills/bobo/teemo/noxious_trap/reset
execute if score @s noxiousTrap matches ..5 unless score @s noxiousTrapCD matches ..0 run scoreboard players remove @s noxiousTrapCD 1

execute if score @s recall matches ..0 if score @s recallCD matches ..0 run function cb:game/during/player/skills/bobo/teemo/recall/reset
execute if score @s recall matches ..0 unless score @s recallCD matches ..0 run scoreboard players remove @s recallCD 1