execute if score #chance gold_ingot matches ..-1 run scoreboard players add #chance gold_ingot 101
execute if score #chance gold_ingot matches 101.. run scoreboard players remove #chance gold_ingot 101
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 金礦狂熱 現已設為 ", {"score": {"name": "#chance", "objective": "gold_ingot"}, "color": "gold", "extra": ["%"]}]
function es2:before/book/leaf