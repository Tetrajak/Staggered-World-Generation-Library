# run the first staggered chunk generation
execute as @e[type=area_effect_cloud, tag=sg.align_chunk, tag=sg.aligned, predicate=stagger_gen:dim_nether] at @s run function stagger_gen:nether/chunk_scan/1

# schedule the next staggered chunk generation
schedule function stagger_gen:nether/chunk_scan/2_select 1t