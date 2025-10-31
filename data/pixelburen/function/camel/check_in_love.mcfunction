# Executing as a single adult camel
scoreboard players set #PIXELBUREN_CAMEL_IN_LOVE pb.camel 0
execute store result score #PIXELBUREN_CAMEL_IN_LOVE pixelburen.camel run data get entity @s InLove
execute if score #PIXELBUREN_CAMEL_IN_LOVE pixelburen.camel matches 1.. run tag @s add pixelburen.camel.in_love
