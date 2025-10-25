# Recompute in-love tagging every tick
# Clear previous tags
tag @e[type=minecraft:camel,tag=pixelburen.camel.in_love,nbt={Age:5900,InLove:0}] remove pixelburen.camel.in_love
tag @e[type=minecraft:camel,tag=pixelburen.camel.in_love,nbt={Age:0,InLove:0}] remove pixelburen.camel.in_love

# Mark adult camels with InLove > 0
execute as @e[type=minecraft:camel,nbt={Age:0}] run function pixelburen:camel/check_in_love

# Check all unprocessed camels; if baby (Age < 0) then handle
execute as @e[type=minecraft:camel,tag=!pixelburen.camel.done] at @s run function pixelburen:camel/check_baby
