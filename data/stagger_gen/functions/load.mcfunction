scoreboard objectives add stagger_gen dummy
scoreboard players set #2 stagger_gen 2
scoreboard players set #16 stagger_gen 16

# chunk change detection scoreboards
scoreboard objectives add sg.x dummy
scoreboard objectives add sg.z dummy
scoreboard objectives add sg.xp dummy
scoreboard objectives add sg.zp dummy

schedule function stagger_gen:second 1s