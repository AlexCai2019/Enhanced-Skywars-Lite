$scoreboard players $(operation) #minute $(objective) $(value)
$execute if score #minute $(objective) matches ..-1 run scoreboard players add #minute $(objective) 21
$execute if score #minute $(objective) matches 21.. run scoreboard players remove #minute $(objective) 21
$tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> $(option)倒數 現已設為 ", {score: {name: "#minute", objective: "$(objective)"}, color: "gold"}, " 分"]
function es2:before/book/leaf