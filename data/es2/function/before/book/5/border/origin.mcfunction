$function es2:before/book/5/border/size {operation: $(operation), name: "#origin", value: $(value), option: "初始邊界"}
execute store result storage es2:data root.game.border.size int 1 run scoreboard players get #origin border
data modify storage es2:data root.game.border.shrink set value 0
function es2:game/border/resize with storage es2:data root.game.border