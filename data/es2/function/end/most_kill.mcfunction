#最高分的
scoreboard players operation #most kill_player > @e kill_player
execute if score #most kill_player matches 0 run return run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 從缺"]

#減去最高分後是0的就是殺人魔鬼 其他的會變負數
scoreboard players operation @e kill_player -= #most kill_player
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 ", {"selector": "@e[scores={kill_player=0}]"}, " (殺人數：", {"score": {"name": "#most", "objective": "kill_player"}, "color": "gold"}, " 人)"]