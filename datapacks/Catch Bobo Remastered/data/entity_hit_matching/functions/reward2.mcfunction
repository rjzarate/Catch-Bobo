execute if entity @s[advancements={entity_hit_matching:on_hit_projectile={target=true}}] run function entity_hit_matching:find_entity2
advancement revoke @s only entity_hit_matching:on_hit_projectile