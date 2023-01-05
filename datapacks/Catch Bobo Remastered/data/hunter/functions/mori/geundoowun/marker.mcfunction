scoreboard players operation #uuid temp = @s uuidLink
execute at @s as @a[gamemode=!spectator,dx=-80,dy=150,dz=-80] run function hunter:mori/geundoowun/player/check
execute if entity @s[tag=noeseon] at @s as @a[gamemode=!spectator,tag=!hunterTeamImmunity,dx=-80,dy=150,dz=-80] run function hunter:mori/geundoowun/player/noeseon/particles
execute if entity @s[tag=noeseon,tag=lightning] at @s as @a[gamemode=!spectator,tag=!hunterTeamImmunity,dx=-80,dy=150,dz=-80] run function hunter:mori/geundoowun/player/noeseon/lightning
execute if entity @s[tag=noeseon,tag=glowing] at @s as @a[gamemode=!spectator,tag=!hunterTeamImmunity,dx=-80,dy=150,dz=-80] run function hunter:mori/geundoowun/player/noeseon/glowing

tag @s[tag=noeseon,tag=lightning] remove lightning
tag @s[tag=noeseon,tag=glowing] remove glowing