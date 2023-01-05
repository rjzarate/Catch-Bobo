execute unless entity @a[team=Hunters,gamemode=!spectator] run function cb:game/post/winner/kill/bobo
execute if entity @a[team=Bobo,tag=bobo,gamemode=spectator] run function cb:game/post/winner/kill/hunters
