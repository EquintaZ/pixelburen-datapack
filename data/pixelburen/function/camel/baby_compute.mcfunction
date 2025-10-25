# Zero registers
scoreboard players set #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_SUM pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_OUT pixelburen.camel 0

# Read parent A speed base -> #PIXELBUREN_CAMEL_PARENT1 (×10000)
execute store result score #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel run data get entity @e[type=minecraft:camel,tag=pixelburen.camel.parent_a,limit=1,sort=nearest] attributes[{id:"minecraft:movement_speed"}].base 10000

# Read parent B speed base -> #PIXELBUREN_CAMEL_PARENT2 (×10000)
execute store result score #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel run data get entity @e[type=minecraft:camel,tag=pixelburen.camel.parent_b,limit=1,sort=nearest] attributes[{id:"minecraft:movement_speed"}].base 10000

# Fallbacks if parent(s) missing: use mid-range default 0.1000 (1000)
execute if score #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel matches 0 run scoreboard players set #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel 1000
execute if score #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel matches 0 run scoreboard players set #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel 1000

# TODO: Change to a more Horsey breeding chance. See ChatGPT calculation.

# Random in [MIN..MAX] -> #PIXELBUREN_CAMEL_RANDOM (×10000)
execute store result score #PIXELBUREN_CAMEL_RANDOM pixelburen.camel run random value 800..2380

# SUM = P1 + P2 + R
scoreboard players operation #PIXELBUREN_CAMEL_SUM pixelburen.camel = #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_SUM pixelburen.camel += #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_SUM pixelburen.camel += #PIXELBUREN_CAMEL_RANDOM pixelburen.camel

# OUT = floor(SUM / 3)
scoreboard players operation #PIXELBUREN_CAMEL_OUT pixelburen.camel = #PIXELBUREN_CAMEL_SUM pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_OUT pixelburen.camel /= #PIXELBUREN_CAMEL_THREE pixelburen.camel

# Clamp OUT to [MIN..MAX]
execute if score #PIXELBUREN_CAMEL_OUT pixelburen.camel < #PIXELBUREN_CAMEL_MIN pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_OUT pixelburen.camel = #PIXELBUREN_CAMEL_MIN pixelburen.camel
execute if score #PIXELBUREN_CAMEL_OUT pixelburen.camel > #PIXELBUREN_CAMEL_MAX pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_OUT pixelburen.camel = #PIXELBUREN_CAMEL_MAX pixelburen.camel

# Write the Base back to THIS baby’s attribute with scale 0.0001
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base double 0.0001 run scoreboard players get #PIXELBUREN_CAMEL_OUT pixelburen.camel

# Cleanup parent temp tags in a small radius (so pairs don’t linger)
tag @e[type=minecraft:camel,tag=pixelburen.camel.parent_a,distance=..12] remove pixelburen.camel.parent_a
tag @e[type=minecraft:camel,tag=pixelburen.camel.parent_b,distance=..12] remove pixelburen.camel.parent_b
