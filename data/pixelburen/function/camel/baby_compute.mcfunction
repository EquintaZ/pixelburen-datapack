# Clear registers
scoreboard players set #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_SUM pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RESULT pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANGE pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_AMP pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM1 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM2 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM3 pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM_AVG pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_RANDOM_SHIFT pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_DELTA pixelburen.camel 0
scoreboard players set #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel 0

# Read parent A speed base -> #PIXELBUREN_CAMEL_PARENT1 (×10000)
execute store result score #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel run data get entity @e[type=minecraft:camel,tag=pixelburen.camel.parent_a,limit=1,sort=nearest] attributes[{id:"minecraft:movement_speed"}].base 10000

# Read parent B speed base -> #PIXELBUREN_CAMEL_PARENT2 (×10000)
execute store result score #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel run data get entity @e[type=minecraft:camel,tag=pixelburen.camel.parent_b,limit=1,sort=nearest] attributes[{id:"minecraft:movement_speed"}].base 10000

# Fallbacks if parent(s) missing: use mid-range default 0.1000 (1000)
execute if score #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel matches 0 run scoreboard players set #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel 1000
execute if score #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel matches 0 run scoreboard players set #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel 1000

# Calculate child speed based on the following formula.
# Source: https://minecraft.wiki/w/Horse#Bred_values
#
# base = (| P1 - P2 | + (MAX - MIN) * 0.3) * ((rand(0,1) + rand(0,1) + rand(0,1)) / 3 - 0.5) + (P1 + P2) / 2
# if base > MAX:
#     base = 2 * MAX - base
# if base < MIN:
#     base = 2 * MIN - base
# return base

# DIFF = |P1 - P2|
scoreboard players set #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel 0
scoreboard players operation #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel = #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel -= #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel
# abs via multiply by -1 if negative
execute if score #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel matches ..-1 run scoreboard players operation #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel *= #PIXELBUREN_CAMEL_NEGATIVE pixelburen.camel

# MEAN = (PARENT1 + PARENT2) / 2
scoreboard players set #PIXELBUREN_CAMEL_SUM pixelburen.camel 0
scoreboard players operation #PIXELBUREN_CAMEL_SUM pixelburen.camel = #PIXELBUREN_CAMEL_PARENT1 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_SUM pixelburen.camel += #PIXELBUREN_CAMEL_PARENT2 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RESULT pixelburen.camel = #PIXELBUREN_CAMEL_SUM pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RESULT pixelburen.camel /= #PIXELBUREN_CAMEL_TWO pixelburen.camel

# RANGE = (MAX - MIN)
scoreboard players operation #PIXELBUREN_CAMEL_RANGE pixelburen.camel = #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANGE pixelburen.camel -= #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel

# AMP = |PARENT1 - PARENT2| + (RANGE * 0.3), where (0.3 -> *3 /10)
scoreboard players operation #PIXELBUREN_CAMEL_AMP pixelburen.camel = #PIXELBUREN_CAMEL_RANGE pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_AMP pixelburen.camel *= #PIXELBUREN_CAMEL_THREE pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_AMP pixelburen.camel /= #PIXELBUREN_CAMEL_TEN pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_AMP pixelburen.camel += #PIXELBUREN_CAMEL_PARENT_DIFF pixelburen.camel

# R = ((rand + rand + rand)/3 - 0.5), scaled as [-500..+500]
execute store result score #PIXELBUREN_CAMEL_RANDOM1 pixelburen.camel run random value 0..1000
execute store result score #PIXELBUREN_CAMEL_RANDOM2 pixelburen.camel run random value 0..1000
execute store result score #PIXELBUREN_CAMEL_RANDOM3 pixelburen.camel run random value 0..1000
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_SUM pixelburen.camel = #PIXELBUREN_CAMEL_RANDOM1 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_SUM pixelburen.camel += #PIXELBUREN_CAMEL_RANDOM2 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_SUM pixelburen.camel += #PIXELBUREN_CAMEL_RANDOM3 pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_AVG pixelburen.camel = #PIXELBUREN_CAMEL_RANDOM_SUM pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_AVG pixelburen.camel /= #PIXELBUREN_CAMEL_THREE pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_SHIFT pixelburen.camel = #PIXELBUREN_CAMEL_RANDOM_AVG pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_RANDOM_SHIFT pixelburen.camel -= #PIXELBUREN_CAMEL_FIVE_HUNDRED pixelburen.camel

# DELTA = AMP * R / 1000
scoreboard players operation #PIXELBUREN_CAMEL_DELTA pixelburen.camel = #PIXELBUREN_CAMEL_AMP pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_DELTA pixelburen.camel *= #PIXELBUREN_CAMEL_RANDOM_SHIFT pixelburen.camel
scoreboard players operation #PIXELBUREN_CAMEL_DELTA pixelburen.camel /= #PIXELBUREN_CAMEL_THOUSAND pixelburen.camel

# RESULT = MEAN + DELTA
scoreboard players operation #PIXELBUREN_CAMEL_RESULT pixelburen.camel += #PIXELBUREN_CAMEL_DELTA pixelburen.camel

# if RESULT > MAX: RESULT = 2 * MAX - RESULT
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel > #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel = #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel > #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel *= #PIXELBUREN_CAMEL_TWO pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel > #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel -= #PIXELBUREN_CAMEL_RESULT pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel > #PIXELBUREN_CAMEL_MAX_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_RESULT pixelburen.camel = #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel

# if RESULT < MIN: RESULT = 2 * MIN - RESULT
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel < #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel = #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel < #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel *= #PIXELBUREN_CAMEL_TWO pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel < #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel -= #PIXELBUREN_CAMEL_RESULT pixelburen.camel
execute if score #PIXELBUREN_CAMEL_RESULT pixelburen.camel < #PIXELBUREN_CAMEL_MIN_SPEED pixelburen.camel run scoreboard players operation #PIXELBUREN_CAMEL_RESULT pixelburen.camel = #PIXELBUREN_CAMEL_TMP_RESULT pixelburen.camel

# Write the result to this baby’s movement speed attribute with scale 0.0001
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].base double 0.0001 run scoreboard players get #PIXELBUREN_CAMEL_RESULT pixelburen.camel

# Cleanup parent temporary tags in a small radius (so pairs don’t linger)
tag @e[type=minecraft:camel,tag=pixelburen.camel.parent_a,distance=..12] remove pixelburen.camel.parent_a
tag @e[type=minecraft:camel,tag=pixelburen.camel.parent_b,distance=..12] remove pixelburen.camel.parent_b
