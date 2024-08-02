scoreboard players operation 00000000-0000-0000-0000-000000000000 team_setting >< 00000000-0000-0000-0000-000000000001 team_setting
execute at 0-0-0-0-0 run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 開放選隊 現已設為 ", {"selector": "@e[type=marker, tag=setting, scores={team_setting=1}, distance=...1]"}]
function es2:before/book/1/leaf