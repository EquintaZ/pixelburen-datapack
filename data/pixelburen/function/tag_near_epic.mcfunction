# Tag players that are near Epic.
tag @a[tag=pixelburen.near_epic] remove pixelburen.near_epic
execute as @e[tag=pixelburen.epic] at @s run tag @a[distance=..10,tag=!pixelburen.epic] add pixelburen.near_epic
