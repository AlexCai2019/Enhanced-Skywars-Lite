$scoreboard players $(operation) #chance $(objective) $(value)
$execute if score #chance $(objective) matches ..-1 run scoreboard players add #chance $(objective) 101
$execute if score #chance $(objective) matches 101.. run scoreboard players remove #chance $(objective) 101
$tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> $(option)狂熱 現已設為 ", {"score": {"name": "#chance", "objective": "$(objective)"}, "color": "gold", "extra": ["%"]}]
function es2:before/book/leaf