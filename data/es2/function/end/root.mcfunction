scoreboard players set #time time -2

gamerule sendCommandFeedback false

#顯示結果
function es2:end/result

execute unless entity @a[scores={first_spectator=1}] run tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 第一主播 從缺"]
execute if entity @a[scores={first_spectator=1}] run tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 第一主播 ", {selector: "@a[scores={first_spectator=1}]"}]

#顯示殺人魔鬼
function es2:end/most_kill/root

tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> ", {text: "點我重設地圖", color: "yellow", click_event: {action: "run_command", command: "/execute if score #time time matches -2 run function es2:end/reset/begin"}}]

schedule function es2:end/reset/begin 180s