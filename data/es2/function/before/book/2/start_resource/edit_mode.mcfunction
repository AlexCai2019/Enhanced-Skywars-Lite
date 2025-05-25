execute at f-f-f-f-f run tp @s ~-2 32 ~2 90.0 30.0
effect give @s glowing infinite 0 true
scoreboard players set #edit start_resource 1
tellraw @s ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> ", {text: "已開始編輯初始物資箱", color: "aqua"}]
function es2:before/book/leaf