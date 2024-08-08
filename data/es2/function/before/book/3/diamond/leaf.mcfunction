execute if score #chance diamond matches ..-1 run scoreboard players add #chance diamond 101
execute if score #chance diamond matches 101.. run scoreboard players remove #chance diamond 101
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 鑽石狂熱 現已設為 ", {"score": {"name": "#chance", "objective": "diamond"}, "color": "gold", "extra": ["%"]}]
function es2:before/book/leaf