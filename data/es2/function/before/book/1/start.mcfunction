scoreboard players operation 00000000-0000-0000-0000-000000000000 start >< 00000000-0000-0000-0000-000000000001 start
function es2:utility/if_else {objective: start, prefix: 'tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲', value1: "已取消倒數", value2: "即將開始"}
title @a times 0 30 0
scoreboard players set #tick start 0
scoreboard players set #time start 6
function es2:before/book/leaf