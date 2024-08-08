execute if score #minute limit matches ..-1 run scoreboard players add #minute limit 21
execute if score #minute limit matches 21.. run scoreboard players remove #minute limit 21
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 限制時間 現已設為 ", {"score": {"name": "#minute", "objective": "limit"}, "color": "gold"}, " 分"]
function es2:before/book/leaf