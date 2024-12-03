#刻
scoreboard players add #tick start 1
execute unless score #tick start matches 20 run return fail

#秒
scoreboard players set #tick start 0
scoreboard players remove #time start 1

#0
execute if score #time start matches 0 run return run function es2:before/start/root

#非0
title @a title {"score": {"name": "#time", "objective": "start"}, "color": "gold", "bold": true}
execute as @a at @s run playsound block.note_block.pling