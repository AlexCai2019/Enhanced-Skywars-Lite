#最高分的
#operation > 會將比較的對象設定為0 但因為都是玩家 反而比較好看
scoreboard players operation #most kill_player > @a kill_player
#凋零怪
execute as a-b-0-5-5 if score @s kill_player matches 1.. run function es2:end/most_kill/wither

execute if score #most kill_player matches 0 run return run tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 殺人魔鬼 從缺"]

#找出殺人魔鬼
execute as @a if score @s kill_player = #most kill_player run tag @s add most_kill
#有凋零怪
execute if score §w kill_player = #most kill_player run function es2:end/most_kill/with_wither
#沒有凋零怪
execute unless score §w kill_player = #most kill_player run tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 殺人魔鬼 ", {selector: "@a[tag=most_kill]"}, " (殺人數：", {score: {name: "#most", objective: "kill_player"}, color: "gold"}, " 人) [", {text: "顯示", color: "aqua", click_event: {action: "run_command", command: "/scoreboard objectives setdisplay sidebar kill_player"}, hover_event: {action: "show_text", value: "顯示殺人魔鬼"}}, "]"]

tag @a[tag=most_kill] remove most_kill