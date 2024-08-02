scoreboard players operation 00000000-0000-0000-0000-000000000000 start >< 00000000-0000-0000-0000-000000000001 start
execute if score 00000000-0000-0000-0000-000000000001 start matches 1 run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲即將開始"]
execute if score 00000000-0000-0000-0000-000000000000 start matches 1 run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲已取消倒數"]
scoreboard players set #tick start 0
scoreboard players set #time start 6
function es2:before/book/1/leaf