# We are executing as the BABY camel here.
tag @s add pixelburen.camel.done

# Mark up to 2 nearest in-love adult camels as parents within 8 blocks
execute as @e[type=minecraft:camel,tag=pixelburen.camel.in_love,sort=nearest,limit=1,distance=..8] run tag @s add pixelburen.camel.parent_a
execute as @e[type=minecraft:camel,tag=pixelburen.camel.in_love,tag=!pixelburen.camel.parent_a,sort=nearest,limit=1,distance=..8] run tag @s add pixelburen.camel.parent_b

# If we couldn’t find both, we’ll still compute with whatever we have (and fall back to defaults).
function pixelburen:camel/baby_compute
