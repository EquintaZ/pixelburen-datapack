# Executing as any camel; branch if baby (Age < 0)
scoreboard players set #PIXELBUREN_CAMEL_AGE pixelburen.camel 0
execute store result score #PIXELBUREN_CAMEL_AGE pixelburen.camel run data get entity @s Age
execute if score #PIXELBUREN_CAMEL_AGE pixelburen.camel matches ..-1 run function pixelburen:camel/baby_start
