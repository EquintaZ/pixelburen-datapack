scoreboard objectives add pixelburen.joined dummy
scoreboard objectives add pixelburen.deathCount deathCount

# EquintaZ
scoreboard objectives add pixelburen.equintaz.used.copper dummy

# Per‑item “used” stats (placing a block consumes/uses the item)
scoreboard objectives add pixelburen.equintaz.used.copper.copper_block minecraft.used:minecraft.copper_block
scoreboard objectives add pixelburen.equintaz.used.copper.exposed_copper minecraft.used:minecraft.exposed_copper
scoreboard objectives add pixelburen.equintaz.used.copper.weathered_copper minecraft.used:minecraft.weathered_copper
scoreboard objectives add pixelburen.equintaz.used.copper.oxidized_copper minecraft.used:minecraft.oxidized_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_copper_block minecraft.used:minecraft.waxed_copper_block
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_exposed_copper minecraft.used:minecraft.waxed_exposed_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_weathered_copper minecraft.used:minecraft.waxed_weathered_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_oxidized_copper minecraft.used:minecraft.waxed_oxidized_copper

# Cut copper (full blocks)
scoreboard objectives add pixelburen.equintaz.used.copper.cut_copper minecraft.used:minecraft.cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.exposed_cut_copper minecraft.used:minecraft.exposed_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.weathered_cut_copper minecraft.used:minecraft.weathered_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.oxidized_cut_copper minecraft.used:minecraft.oxidized_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_cut_copper minecraft.used:minecraft.waxed_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_exposed_cut_copper minecraft.used:minecraft.waxed_exposed_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_weathered_cut_copper minecraft.used:minecraft.waxed_weathered_cut_copper
scoreboard objectives add pixelburen.equintaz.used.copper.waxed_oxidized_cut_copper minecraft.used:minecraft.waxed_oxidized_cut_copper

# Kiesje
scoreboard objectives add pixelburen.kiesje.killed.warden minecraft.killed:minecraft.warden

function pixelburen:upgrade/upgrade
function pixelburen:camel/init

# Scheduling
schedule function pixelburen:schedule/every_second 1s replace
schedule function pixelburen:schedule/every_second_seconds 2s replace
