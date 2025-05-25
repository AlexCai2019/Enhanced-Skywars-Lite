$scoreboard players $(operation) #$(name) border $(value)
$execute if score #$(name) border matches ..0 run scoreboard players add #$(name) border 200
$execute if score #$(name) border matches 201.. run scoreboard players remove #$(name) border 200
$tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> $(option) 現已設為 ", {score: {name: "#$(name)", objective: "border"}, color: "gold"}, " 格"]
function es2:before/book/leaf