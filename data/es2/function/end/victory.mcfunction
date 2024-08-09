$execute unless entity @a[team=$(color), gamemode=survival] run return fail
title @a title {"text": "遊戲結束！", "color": "green", "bold": true, "italic": true}
$title @a subtitle ["", {"text": "$(team)隊 ", "color": "$(color)"}, "勝利"]
$tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 遊戲結束 ", {"text": "$(team)隊 ", "color": "$(color)"}, {"selector": "@a[team=$(color)]"}, " 獲得了勝利"]