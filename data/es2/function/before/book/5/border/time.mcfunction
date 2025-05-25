$scoreboard players $(operation) #$(name) border $(value)
$execute if score #$(name) border matches ..-1 run scoreboard players add #$(name) border 21
$execute if score #$(name) border matches 21.. run scoreboard players remove #$(name) border 21
$tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> $(option) 現已設為 ", {score: {name: "#$(name)", objective: "border"}, color: "gold"}, " 分"]
function es2:before/book/leaf