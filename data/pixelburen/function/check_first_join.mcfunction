# Detect players who have not been marked as joined.
execute as @a unless score @s pixelburen.joined matches 1 run function pixelburen:on_first_join
