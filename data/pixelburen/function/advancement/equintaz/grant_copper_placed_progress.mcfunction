# Sum all copper placements into pixelburen.equintaz.used.copper each tick
scoreboard players set @a pixelburen.equintaz.used.copper 0

# Base blocks
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.copper_block
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.exposed_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.weathered_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.oxidized_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_copper_block
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_exposed_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_weathered_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_oxidized_copper

# Cut (full)
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.exposed_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.weathered_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.oxidized_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_exposed_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_weathered_cut_copper
scoreboard players operation @a pixelburen.equintaz.used.copper += @a pixelburen.equintaz.used.copper.waxed_oxidized_cut_copper

# Grant advancement progress based on copper used
execute as @a[scores={pixelburen.equintaz.used.copper=100..}] run advancement grant @s only pixelburen:equintaz/copper_love step_001
execute as @a[scores={pixelburen.equintaz.used.copper=200..}] run advancement grant @s only pixelburen:equintaz/copper_love step_002
execute as @a[scores={pixelburen.equintaz.used.copper=300..}] run advancement grant @s only pixelburen:equintaz/copper_love step_003
execute as @a[scores={pixelburen.equintaz.used.copper=400..}] run advancement grant @s only pixelburen:equintaz/copper_love step_004
execute as @a[scores={pixelburen.equintaz.used.copper=500..}] run advancement grant @s only pixelburen:equintaz/copper_love step_005
execute as @a[scores={pixelburen.equintaz.used.copper=600..}] run advancement grant @s only pixelburen:equintaz/copper_love step_006
execute as @a[scores={pixelburen.equintaz.used.copper=700..}] run advancement grant @s only pixelburen:equintaz/copper_love step_007
execute as @a[scores={pixelburen.equintaz.used.copper=800..}] run advancement grant @s only pixelburen:equintaz/copper_love step_008
execute as @a[scores={pixelburen.equintaz.used.copper=900..}] run advancement grant @s only pixelburen:equintaz/copper_love step_009
execute as @a[scores={pixelburen.equintaz.used.copper=100..}] run advancement grant @s only pixelburen:equintaz/copper_love step_010
execute as @a[scores={pixelburen.equintaz.used.copper=110..}] run advancement grant @s only pixelburen:equintaz/copper_love step_011
execute as @a[scores={pixelburen.equintaz.used.copper=120..}] run advancement grant @s only pixelburen:equintaz/copper_love step_012
execute as @a[scores={pixelburen.equintaz.used.copper=130..}] run advancement grant @s only pixelburen:equintaz/copper_love step_013
execute as @a[scores={pixelburen.equintaz.used.copper=140..}] run advancement grant @s only pixelburen:equintaz/copper_love step_014
execute as @a[scores={pixelburen.equintaz.used.copper=150..}] run advancement grant @s only pixelburen:equintaz/copper_love step_015
execute as @a[scores={pixelburen.equintaz.used.copper=160..}] run advancement grant @s only pixelburen:equintaz/copper_love step_016
execute as @a[scores={pixelburen.equintaz.used.copper=170..}] run advancement grant @s only pixelburen:equintaz/copper_love step_017
execute as @a[scores={pixelburen.equintaz.used.copper=180..}] run advancement grant @s only pixelburen:equintaz/copper_love step_018
execute as @a[scores={pixelburen.equintaz.used.copper=190..}] run advancement grant @s only pixelburen:equintaz/copper_love step_019
execute as @a[scores={pixelburen.equintaz.used.copper=200..}] run advancement grant @s only pixelburen:equintaz/copper_love step_020
execute as @a[scores={pixelburen.equintaz.used.copper=210..}] run advancement grant @s only pixelburen:equintaz/copper_love step_021
execute as @a[scores={pixelburen.equintaz.used.copper=220..}] run advancement grant @s only pixelburen:equintaz/copper_love step_022
execute as @a[scores={pixelburen.equintaz.used.copper=230..}] run advancement grant @s only pixelburen:equintaz/copper_love step_023
execute as @a[scores={pixelburen.equintaz.used.copper=240..}] run advancement grant @s only pixelburen:equintaz/copper_love step_024
execute as @a[scores={pixelburen.equintaz.used.copper=250..}] run advancement grant @s only pixelburen:equintaz/copper_love step_025
execute as @a[scores={pixelburen.equintaz.used.copper=260..}] run advancement grant @s only pixelburen:equintaz/copper_love step_026
execute as @a[scores={pixelburen.equintaz.used.copper=270..}] run advancement grant @s only pixelburen:equintaz/copper_love step_027
execute as @a[scores={pixelburen.equintaz.used.copper=280..}] run advancement grant @s only pixelburen:equintaz/copper_love step_028
execute as @a[scores={pixelburen.equintaz.used.copper=290..}] run advancement grant @s only pixelburen:equintaz/copper_love step_029
execute as @a[scores={pixelburen.equintaz.used.copper=300..}] run advancement grant @s only pixelburen:equintaz/copper_love step_030
execute as @a[scores={pixelburen.equintaz.used.copper=310..}] run advancement grant @s only pixelburen:equintaz/copper_love step_031
execute as @a[scores={pixelburen.equintaz.used.copper=320..}] run advancement grant @s only pixelburen:equintaz/copper_love step_032
execute as @a[scores={pixelburen.equintaz.used.copper=330..}] run advancement grant @s only pixelburen:equintaz/copper_love step_033
execute as @a[scores={pixelburen.equintaz.used.copper=340..}] run advancement grant @s only pixelburen:equintaz/copper_love step_034
execute as @a[scores={pixelburen.equintaz.used.copper=350..}] run advancement grant @s only pixelburen:equintaz/copper_love step_035
execute as @a[scores={pixelburen.equintaz.used.copper=360..}] run advancement grant @s only pixelburen:equintaz/copper_love step_036
execute as @a[scores={pixelburen.equintaz.used.copper=370..}] run advancement grant @s only pixelburen:equintaz/copper_love step_037
execute as @a[scores={pixelburen.equintaz.used.copper=380..}] run advancement grant @s only pixelburen:equintaz/copper_love step_038
execute as @a[scores={pixelburen.equintaz.used.copper=390..}] run advancement grant @s only pixelburen:equintaz/copper_love step_039
execute as @a[scores={pixelburen.equintaz.used.copper=400..}] run advancement grant @s only pixelburen:equintaz/copper_love step_040
execute as @a[scores={pixelburen.equintaz.used.copper=410..}] run advancement grant @s only pixelburen:equintaz/copper_love step_041
execute as @a[scores={pixelburen.equintaz.used.copper=420..}] run advancement grant @s only pixelburen:equintaz/copper_love step_042
execute as @a[scores={pixelburen.equintaz.used.copper=430..}] run advancement grant @s only pixelburen:equintaz/copper_love step_043
execute as @a[scores={pixelburen.equintaz.used.copper=440..}] run advancement grant @s only pixelburen:equintaz/copper_love step_044
execute as @a[scores={pixelburen.equintaz.used.copper=450..}] run advancement grant @s only pixelburen:equintaz/copper_love step_045
execute as @a[scores={pixelburen.equintaz.used.copper=460..}] run advancement grant @s only pixelburen:equintaz/copper_love step_046
execute as @a[scores={pixelburen.equintaz.used.copper=470..}] run advancement grant @s only pixelburen:equintaz/copper_love step_047
execute as @a[scores={pixelburen.equintaz.used.copper=480..}] run advancement grant @s only pixelburen:equintaz/copper_love step_048
execute as @a[scores={pixelburen.equintaz.used.copper=490..}] run advancement grant @s only pixelburen:equintaz/copper_love step_049
execute as @a[scores={pixelburen.equintaz.used.copper=500..}] run advancement grant @s only pixelburen:equintaz/copper_love step_050
execute as @a[scores={pixelburen.equintaz.used.copper=510..}] run advancement grant @s only pixelburen:equintaz/copper_love step_051
execute as @a[scores={pixelburen.equintaz.used.copper=520..}] run advancement grant @s only pixelburen:equintaz/copper_love step_052
execute as @a[scores={pixelburen.equintaz.used.copper=530..}] run advancement grant @s only pixelburen:equintaz/copper_love step_053
execute as @a[scores={pixelburen.equintaz.used.copper=540..}] run advancement grant @s only pixelburen:equintaz/copper_love step_054
execute as @a[scores={pixelburen.equintaz.used.copper=550..}] run advancement grant @s only pixelburen:equintaz/copper_love step_055
execute as @a[scores={pixelburen.equintaz.used.copper=560..}] run advancement grant @s only pixelburen:equintaz/copper_love step_056
execute as @a[scores={pixelburen.equintaz.used.copper=570..}] run advancement grant @s only pixelburen:equintaz/copper_love step_057
execute as @a[scores={pixelburen.equintaz.used.copper=580..}] run advancement grant @s only pixelburen:equintaz/copper_love step_058
execute as @a[scores={pixelburen.equintaz.used.copper=590..}] run advancement grant @s only pixelburen:equintaz/copper_love step_059
execute as @a[scores={pixelburen.equintaz.used.copper=600..}] run advancement grant @s only pixelburen:equintaz/copper_love step_060
execute as @a[scores={pixelburen.equintaz.used.copper=610..}] run advancement grant @s only pixelburen:equintaz/copper_love step_061
execute as @a[scores={pixelburen.equintaz.used.copper=620..}] run advancement grant @s only pixelburen:equintaz/copper_love step_062
execute as @a[scores={pixelburen.equintaz.used.copper=630..}] run advancement grant @s only pixelburen:equintaz/copper_love step_063
execute as @a[scores={pixelburen.equintaz.used.copper=640..}] run advancement grant @s only pixelburen:equintaz/copper_love step_064
execute as @a[scores={pixelburen.equintaz.used.copper=650..}] run advancement grant @s only pixelburen:equintaz/copper_love step_065
execute as @a[scores={pixelburen.equintaz.used.copper=660..}] run advancement grant @s only pixelburen:equintaz/copper_love step_066
execute as @a[scores={pixelburen.equintaz.used.copper=670..}] run advancement grant @s only pixelburen:equintaz/copper_love step_067
execute as @a[scores={pixelburen.equintaz.used.copper=680..}] run advancement grant @s only pixelburen:equintaz/copper_love step_068
execute as @a[scores={pixelburen.equintaz.used.copper=690..}] run advancement grant @s only pixelburen:equintaz/copper_love step_069
execute as @a[scores={pixelburen.equintaz.used.copper=700..}] run advancement grant @s only pixelburen:equintaz/copper_love step_070
execute as @a[scores={pixelburen.equintaz.used.copper=710..}] run advancement grant @s only pixelburen:equintaz/copper_love step_071
execute as @a[scores={pixelburen.equintaz.used.copper=720..}] run advancement grant @s only pixelburen:equintaz/copper_love step_072
execute as @a[scores={pixelburen.equintaz.used.copper=730..}] run advancement grant @s only pixelburen:equintaz/copper_love step_073
execute as @a[scores={pixelburen.equintaz.used.copper=740..}] run advancement grant @s only pixelburen:equintaz/copper_love step_074
execute as @a[scores={pixelburen.equintaz.used.copper=750..}] run advancement grant @s only pixelburen:equintaz/copper_love step_075
execute as @a[scores={pixelburen.equintaz.used.copper=760..}] run advancement grant @s only pixelburen:equintaz/copper_love step_076
execute as @a[scores={pixelburen.equintaz.used.copper=770..}] run advancement grant @s only pixelburen:equintaz/copper_love step_077
execute as @a[scores={pixelburen.equintaz.used.copper=780..}] run advancement grant @s only pixelburen:equintaz/copper_love step_078
execute as @a[scores={pixelburen.equintaz.used.copper=790..}] run advancement grant @s only pixelburen:equintaz/copper_love step_079
execute as @a[scores={pixelburen.equintaz.used.copper=800..}] run advancement grant @s only pixelburen:equintaz/copper_love step_080
execute as @a[scores={pixelburen.equintaz.used.copper=810..}] run advancement grant @s only pixelburen:equintaz/copper_love step_081
execute as @a[scores={pixelburen.equintaz.used.copper=820..}] run advancement grant @s only pixelburen:equintaz/copper_love step_082
execute as @a[scores={pixelburen.equintaz.used.copper=830..}] run advancement grant @s only pixelburen:equintaz/copper_love step_083
execute as @a[scores={pixelburen.equintaz.used.copper=840..}] run advancement grant @s only pixelburen:equintaz/copper_love step_084
execute as @a[scores={pixelburen.equintaz.used.copper=850..}] run advancement grant @s only pixelburen:equintaz/copper_love step_085
execute as @a[scores={pixelburen.equintaz.used.copper=860..}] run advancement grant @s only pixelburen:equintaz/copper_love step_086
execute as @a[scores={pixelburen.equintaz.used.copper=870..}] run advancement grant @s only pixelburen:equintaz/copper_love step_087
execute as @a[scores={pixelburen.equintaz.used.copper=880..}] run advancement grant @s only pixelburen:equintaz/copper_love step_088
execute as @a[scores={pixelburen.equintaz.used.copper=890..}] run advancement grant @s only pixelburen:equintaz/copper_love step_089
execute as @a[scores={pixelburen.equintaz.used.copper=900..}] run advancement grant @s only pixelburen:equintaz/copper_love step_090
execute as @a[scores={pixelburen.equintaz.used.copper=910..}] run advancement grant @s only pixelburen:equintaz/copper_love step_091
execute as @a[scores={pixelburen.equintaz.used.copper=920..}] run advancement grant @s only pixelburen:equintaz/copper_love step_092
execute as @a[scores={pixelburen.equintaz.used.copper=930..}] run advancement grant @s only pixelburen:equintaz/copper_love step_093
execute as @a[scores={pixelburen.equintaz.used.copper=940..}] run advancement grant @s only pixelburen:equintaz/copper_love step_094
execute as @a[scores={pixelburen.equintaz.used.copper=950..}] run advancement grant @s only pixelburen:equintaz/copper_love step_095
execute as @a[scores={pixelburen.equintaz.used.copper=960..}] run advancement grant @s only pixelburen:equintaz/copper_love step_096
execute as @a[scores={pixelburen.equintaz.used.copper=970..}] run advancement grant @s only pixelburen:equintaz/copper_love step_097
execute as @a[scores={pixelburen.equintaz.used.copper=980..}] run advancement grant @s only pixelburen:equintaz/copper_love step_098
execute as @a[scores={pixelburen.equintaz.used.copper=990..}] run advancement grant @s only pixelburen:equintaz/copper_love step_099
execute as @a[scores={pixelburen.equintaz.used.copper=1000..}] run advancement grant @s only pixelburen:equintaz/copper_love step_100
