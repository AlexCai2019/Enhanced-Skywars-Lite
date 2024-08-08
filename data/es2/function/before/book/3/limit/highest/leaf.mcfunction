execute if score #highest limit matches ..-65 run scoreboard players add #highest limit 384
execute if score #highest limit matches 320.. run scoreboard players remove #highest limit 384
execute if score #highest limit < #lowest limit run scoreboard players operation #highest limit = #lowest limit
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 限制制空 現已設為 ", {"score": {"name": "#highest", "objective": "limit"}, "color": "gold"}]
function es2:before/book/leaf