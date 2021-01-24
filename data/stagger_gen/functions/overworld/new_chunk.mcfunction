execute unless block ~ 0 ~ minecraft:barrel run setblock ~ 0 ~ minecraft:barrel{Items:[{Slot:0b, id:"minecraft:stick", Count:1b, tag:{display:{Name:"{\"text\": \"Please don't remove this stick\"}"}}}]}
execute unless block ~ 1 ~ minecraft:bedrock run setblock ~ 1 ~ minecraft:bedrock

function #stagger_gen:overworld/on_new_chunk