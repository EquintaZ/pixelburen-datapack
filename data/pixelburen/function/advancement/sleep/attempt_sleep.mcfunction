# Run on bed entry (from the advancement reward)

# If Glaleria ALREADY has the advancement → 2% (1 in 50)
execute if entity @s[name=Glaleria] if entity @s[advancements={pixelburen:glaleria/blown_out_of_bed=true}] if predicate pixelburen:chance/002_percent run function pixelburen:advancement/sleep/blow_out_of_bed

# If Glaleria does NOT have the advancement → 3% (1 in 33)
execute if entity @s[name=Glaleria] unless entity @s[advancements={pixelburen:glaleria/blown_out_of_bed=true}] if predicate pixelburen:chance/002_percent run function pixelburen:advancement/sleep/blow_out_of_bed

# If another player → 2% (1 in 50)
execute unless entity @s[name=Glaleria] if predicate pixelburen:chance/002_percent run function pixelburen:advancement/sleep/blow_out_of_bed

# Reset advancement so we can trigger again on the next bed use.
advancement revoke @s only pixelburen:trigger/used_bed
