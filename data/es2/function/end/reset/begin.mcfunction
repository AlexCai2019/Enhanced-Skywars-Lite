tp @s ~ 318.5 ~

execute store result storage es2:data root.game.border.size int 1 run scoreboard players get #origin border
data modify storage es2:data root.game.border.shrink set value 0
function es2:game/border/resize with storage es2:data root.game.border

function es2:game/wither/end
function es2:game/limit/end
function es2:game/border/end