scoreboard players operation #most kill_player > * kill_player
execute if score #most kill_player matches 0 run return run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 從缺"]

execute as @e run scoreboard players operation @s kill_player -= #most kill_player
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 ", {"selector": "@e[scores={kill_player=0}]"}, " (殺人數：", {"score": {"name": "#most", "objective": "kill_player"}, "color": "gold"}, " 人)"]