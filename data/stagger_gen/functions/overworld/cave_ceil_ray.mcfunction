execute unless block ~ ~1 ~ #stagger_gen:cave_content_overworld run tp @s ~ ~ ~

scoreboard players add #n stagger_gen 1
execute unless score #n stagger_gen > #max stagger_gen if block ~ ~1 ~ #stagger_gen:cave_content_overworld positioned ~ ~1 ~ run function stagger_gen:overworld/cave_ceil_ray