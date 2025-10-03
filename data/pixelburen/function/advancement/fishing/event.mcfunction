# Add particle effects to event items
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pixelburen:{event:"experience_swarm"}}}}}] at @s run particle minecraft:effect ~ ~0.05 ~ 0.1 0.1 0.1 0 5 force

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pixelburen:{event:"too_lucky"}}}}}] at @s run particle minecraft:effect ~ ~0.05 ~ 0.1 0.1 0.1 0 5 force

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{pixelburen:{event:"fishing_karma"}}}}}] at @s run particle minecraft:ash ~ ~0.05 ~ 0.1 0.1 0.1 0 5 force

# Remove event items from the inventory
clear @p minecraft:experience_bottle[minecraft:custom_data={pixelburen:{event:"experience_swarm"}}]
clear @p minecraft:potion[minecraft:custom_data={pixelburen:{event:"too_lucky"}}]
clear @p minecraft:potion[minecraft:custom_data={pixelburen:{event:"fishing_karma"}}]
