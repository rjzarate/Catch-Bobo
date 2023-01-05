execute if score constant sGameTW matches 0 if score constant hunterCount matches 2.. run function cb:game/post/winner/time/hunters
execute if score constant sGameTW matches 2 run function cb:game/post/winner/time/hunters
execute if score constant sGameTW matches 0 if score constant hunterCount matches ..1 run function cb:game/post/winner/time/bobo
execute if score constant sGameTW matches 3 run function cb:game/post/winner/time/bobo
execute if score constant sGameTW matches 1 run function cb:game/post/winner/time/tie

scoreboard players set constant gameInProgress 2