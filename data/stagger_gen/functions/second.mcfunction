schedule function stagger_gen:second 1s

# remove all processed chunk tracking AECs
kill @e[type=area_effect_cloud, tag=sg.align_chunk, tag=sg.processed]

# run the first staggered chunk generation
execute if entity @e[type=area_effect_cloud, tag=sg.align_chunk, tag=sg.aligned, predicate=stagger_gen:dim_overworld] run function stagger_gen:overworld/start_scan
execute if entity @e[type=area_effect_cloud, tag=sg.align_chunk, tag=sg.aligned, predicate=stagger_gen:dim_nether] run function stagger_gen:nether/start_scan