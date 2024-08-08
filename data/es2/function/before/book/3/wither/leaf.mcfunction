execute if score #minute wither matches ..-1 run scoreboard players add #minute wither 21
execute if score #minute wither matches 21.. run scoreboard players remove #minute wither 21
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 絕殺時間 現已設為 ", {"score": {"name": "#minute", "objective": "wither"}, "color": "gold"}, " 分"]
function es2:before/book/leaf