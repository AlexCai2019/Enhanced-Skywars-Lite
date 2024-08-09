scoreboard players set #time time -2

function es2:end/victory {color: red, team: "紅"}
function es2:end/victory {color: blue, team: "藍"}
function es2:end/victory {color: green, team: "綠"}
function es2:end/victory {color: yellow, team: "黃"}

execute unless entity @a[scores={first_spectator=1}] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 第一主播 從缺"]
execute if entity @a[scores={first_spectator=1}] run tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 第一主播 ", {"selector": "@a[scores={first_spectator=1}]"}]

function es2:end/most_kill

tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "點我重設地圖", "color": "yellow", "clickEvent": {"action": "run_command", "value": "/execute if score #time time matches -2 run function es2:end/reset/root"}}]

schedule function es2:end/reset/root 180s