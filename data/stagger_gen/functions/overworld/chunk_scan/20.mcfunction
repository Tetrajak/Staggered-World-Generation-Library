execute positioned ~64 0 ~64 if block ~ 0 ~ #stagger_gen:okay_to_gen run function stagger_gen:overworld/new_chunk
execute positioned ~-64 0 ~64 if block ~ 0 ~ #stagger_gen:okay_to_gen run function stagger_gen:overworld/new_chunk
execute positioned ~64 0 ~-64 if block ~ 0 ~ #stagger_gen:okay_to_gen run function stagger_gen:overworld/new_chunk
execute positioned ~-64 0 ~-64 if block ~ 0 ~ #stagger_gen:okay_to_gen run function stagger_gen:overworld/new_chunk

tag @s add sg.processed