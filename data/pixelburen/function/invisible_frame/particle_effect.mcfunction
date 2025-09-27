# Periodic sparkle when empty (every tick is fine; very light particle)
execute as @e[type=item_frame,tag=pixelburen.invisible_frame] \
    unless data entity @s Item at @s run particle minecraft:ash ~ ~0.01 ~ 0.1 0 0.1 0 1 force