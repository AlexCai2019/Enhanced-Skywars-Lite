$title @a subtitle [{"text": "$(team)隊 ", "color": "$(color)"}, {"text": "勝利", "color": "gold"}]
$tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲結束 ", {"text": "$(team)隊 ", "color": "$(color)"}, {"selector": "@a[team=$(color)]"}, " 獲得了勝利"]
execute as @a at @s run playsound entity.firework_rocket.twinkle