# Summon wind charge right above player
summon minecraft:wind_charge ~ ~1 ~ {Motion:[0.0,-0.5,0.2]}

# Always notify the player of the event
tellraw @s {"text":"Een gesprongen veer heeft je uit bed gelanceerd! Kijk je uit?","color":"gray"}

# Drop feather, string, iron nugget or nothing
loot spawn ~ ~ ~ loot pixelburen:sleep/blow_out_of_bed

# One-time advancement
advancement grant @s only pixelburen:glaleria/blown_out_of_bed blown_out
