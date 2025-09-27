# Wake the player (cancels sleeping) → might not be needed
# damage @s 0.1

# Trigger wind charge right above them (instant detonation)
summon minecraft:wind_charge ~ ~1 ~ {Motion:[0.0,-0.5,0.2]}

tellraw @s {"text":"Een gesprongen veer heeft je uit bed gelanceerd! Kijk je uit?","color":"gray"}

advancement grant @s only pixelburen:glaleria/blown_out_of_bed blown_out