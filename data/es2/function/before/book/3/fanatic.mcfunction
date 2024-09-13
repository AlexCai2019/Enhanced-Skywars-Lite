$scoreboard players $(operation) #$(material) fanatic $(value)
$execute if score #$(material) fanatic matches ..-1 run scoreboard players add #$(material) fanatic 101
$execute if score #$(material) fanatic matches 101.. run scoreboard players remove #$(material) fanatic 101
$tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"translate": "item.minecraft.$(material)"}, "狂熱 現已設為 ", {"score": {"name": "#$(material)", "objective": "fanatic"}, "color": "gold", "extra": ["%"]}]
function es2:before/book/leaf