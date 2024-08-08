$scoreboard players $(operation) $(name) limit $(value)
$execute if score $(name) limit matches ..-65 run scoreboard players add $(name) limit 384
$execute if score $(name) limit matches 320.. run scoreboard players remove $(name) limit 384
$execute if score $(name) limit < #lowest limit run scoreboard players operation $(name) limit = #lowest limit
$execute if score $(name) limit > #highest limit run scoreboard players operation $(name) limit = #highest limit
$tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> 限制$(option) 現已設為 ", {"score": {"name": "$(name)", "objective": "limit"}, "color": "gold"}]
function es2:before/book/leaf