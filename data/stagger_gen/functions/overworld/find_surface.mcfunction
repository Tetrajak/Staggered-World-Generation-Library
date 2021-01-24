# store current x and z coordinates for spread correction
execute store result score #x stagger_gen run data get entity @s Pos[0]
execute store result score #z stagger_gen run data get entity @s Pos[2]

# move marker to the top block
spreadplayers ~ ~ 0.0 1.0 false @s

# correct x and z coordinates for spread
execute store result entity @s Pos[0] double 1 run scoreboard players get #x stagger_gen
execute store result entity @s Pos[2] double 1 run scoreboard players get #z stagger_gen

# move down through groundcover to find the ground
execute as @s at @s run function stagger_gen:overworld/surface_ray