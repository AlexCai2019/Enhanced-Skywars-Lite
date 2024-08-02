scoreboard players operation 00000000-0000-0000-0000-000000000000 friendly_fire >< 00000000-0000-0000-0000-000000000001 friendly_fire
execute at 0-0-0-0-0 run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 同隊傷害 現已設為 ", {"selector": "@e[type=marker, tag=setting, scores={friendly_fire=1}, distance=...1]"}]
function es2:before/book/1/leaf