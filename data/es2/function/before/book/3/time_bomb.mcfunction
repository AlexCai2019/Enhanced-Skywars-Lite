$scoreboard players $(operation) #second time_bomb $(value)
execute if score #second time_bomb matches ..-1 run scoreboard players add #second time_bomb 121
execute if score #second time_bomb matches 121.. run scoreboard players remove #second time_bomb 121
tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 爆炸倒數 現已設為 ", {score: {name: "#second", objective: "time_bomb"}, color: "gold"}, " 秒"]
function es2:before/book/leaf