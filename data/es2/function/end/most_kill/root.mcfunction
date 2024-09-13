#最高分的
scoreboard players operation #most kill_player > @e kill_player
execute if score #most kill_player matches 0 run return run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 從缺"]
#operation > 會將比較的對象設定為0
scoreboard players reset @e[type=!player, scores={kill_player=0}] kill_player

#找出殺人魔鬼
execute as @e if score @s kill_player = #most kill_player run tag @s add most_kill
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 殺人魔鬼 ", {"selector": "@e[tag=most_kill]"}, " (殺人數：", {"score": {"name": "#most", "objective": "kill_player"}, "color": "gold"}, " 人) [", {"text": "顯示", "color": "aqua", "clickEvent": {"action": "run_command", "value": "/scoreboard objectives setdisplay sidebar kill_player"}}, "]"]
tag @e[tag=most_kill] remove most_kill

#凋零怪
execute as a-b-0-5-5 if score @s kill_player matches 1.. run function es2:end/most_kill/other_entity {name: w}

#虛空
execute as 0-0-0-0-7 if score @s kill_player matches 1.. run function es2:end/most_kill/other_entity {name: v}