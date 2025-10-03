# Run on bed entry (from the advancement reward)

# 1% chance for everyone
execute if predicate pixelburen:chance/001_percent run function pixelburen:advancement/sleep/blow_out_of_bed

# Reset advancement so we can trigger again on the next bed use.
advancement revoke @s only pixelburen:trigger/used_bed
