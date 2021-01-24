# move "current" location to previous location
scoreboard players operation @s sg.xp = @s sg.x
scoreboard players operation @s sg.yp = @s sg.y
scoreboard players operation @s sg.zp = @s sg.z

# get new current location, divided by 16
execute store result score @s sg.x run data get entity @s Pos[0] 0.0625
execute store result score @s sg.y run data get entity @s Pos[1] 0.0625
execute store result score @s sg.z run data get entity @s Pos[2] 0.0625

# check if current position has changed
tag @s[tag=sg.changed] remove sg.changed
execute unless score @s sg.xp = @s sg.x run tag @s add sg.changed
execute unless score @s sg.yp = @s sg.y run tag @s add sg.changed
execute unless score @s sg.zp = @s sg.z run tag @s add sg.changed

# place a chunk tracking AEC, if the player has changed chunk locations
execute as @s[tag=sg.changed] at @s align xyz positioned ~ 0 ~ unless entity @e[type=area_effect_cloud, tag=sg.align_chunk, distance=..32, limit=1, sort=nearest] run function stagger_gen:new_tracker

advancement revoke @s only stagger_gen:tracked_dim