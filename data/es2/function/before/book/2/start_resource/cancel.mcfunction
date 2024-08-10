scoreboard players reset #edit start_resource
effect clear @a glowing
tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "已取消設定初始物資箱", "color": "red"}]
function es2:before/book/leaf