scoreboard players operation @s uuidLink = #uuid temp

#scoreboard players operation @s slowcast.itt = #itt slowcast
#scoreboard players operation @s slowcast.dist = #dist slowcast
scoreboard players set @s ee-3Iteration 4
scoreboard players operation .range stats *= #2 constant
scoreboard players operation .range stats /= @s ee-3Iteration
scoreboard players operation @s ee-3Range = .range stats

scoreboard players operation @s ee-3Damage = #damage temp


tag @s remove slowcast.new
tp @s ~ ~ ~ ~ ~