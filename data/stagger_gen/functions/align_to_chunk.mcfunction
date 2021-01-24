# align the chunk tracking AEC to the chunk
execute store result score #x_coord stagger_gen run data get entity @s Pos[0]
execute store result score #z_coord stagger_gen run data get entity @s Pos[2]

scoreboard players operation #x_chunk_offset stagger_gen = #x_coord stagger_gen
scoreboard players operation #z_chunk_offset stagger_gen = #z_coord stagger_gen

scoreboard players operation #x_chunk_offset stagger_gen %= #16 stagger_gen
scoreboard players operation #z_chunk_offset stagger_gen %= #16 stagger_gen

scoreboard players operation #x_coord stagger_gen -= #x_chunk_offset stagger_gen
scoreboard players operation #z_coord stagger_gen -= #z_chunk_offset stagger_gen

execute store result entity @s Pos[0] double 1 run scoreboard players get #x_coord stagger_gen
execute store result entity @s Pos[2] double 1 run scoreboard players get #z_coord stagger_gen

tag @s add sg.aligned