scoreboard players set #time time -2
schedule function es2:end/reset/root 180s
tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "點我重設地圖", "color": "yellow", "clickEvent": {"action": "run_command", "value": "/execute if score #time time matches -2 run function es2:end/reset/root"}}]