execute if score #lowest limit matches ..-65 run scoreboard players add #lowest limit 384
execute if score #lowest limit matches 320.. run scoreboard players remove #lowest limit 384
execute if score #lowest limit > #highest limit run scoreboard players operation #lowest limit = #highest limit
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 限制遁地 現已設為 ", {"score": {"name": "#lowest", "objective": "limit"}, "color": "gold"}]
function es2:before/book/leaf