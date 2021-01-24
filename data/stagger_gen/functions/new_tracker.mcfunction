# summon new chunk tracking AEC
summon area_effect_cloud ~ 0 ~ {Tags:["sg.align_chunk"], Age:1, Duration:22, DurationOnUse:0, Radius:0f, RadiusOnUse:0f, RadiusPerTick:0f, Particle:"block air", Effects:[{Id:27b, Amplifier:0b, Duration:0, ShowParticles:0b, ShowIcon:0b}]}

# align the new chunk tracker
execute as @e[type=area_effect_cloud, tag=sg.align_chunk, tag=!sg.aligned, limit=1, sort=nearest, distance=..32] at @s run function stagger_gen:align_to_chunk