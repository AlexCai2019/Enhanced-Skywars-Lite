title @a times 5 30 5
title @a title {text: "遊戲結束！", color: "green", bold: true, italic: true}

execute if entity @a[team=red, gamemode=survival] run return run function es2:end/victory {color: red, team: "紅"}
execute if entity @a[team=blue, gamemode=survival] run return run function es2:end/victory {color: blue, team: "藍"}
execute if entity @a[team=green, gamemode=survival] run return run function es2:end/victory {color: green, team: "綠"}
execute if entity @a[team=yellow, gamemode=survival] run return run function es2:end/victory {color: yellow, team: "黃"}

title @a subtitle {text: "平手", color: "gray"}
tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 遊戲結束 ", {text: "平手", color: "gray"}]