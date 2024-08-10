execute as f-f-f-f-f at @s run tp @s ~ 318.5 ~

gamerule commandModificationBlockLimit 1048576

execute store result storage es2:data root.game.border.size int 1 run scoreboard players get #origin border
data modify storage es2:data root.game.border.shrink set value 0
function es2:game/border/resize with storage es2:data root.game.border

function es2:game/wither/end
function es2:game/limit/end
function es2:game/border/end

bossbar set es2:reset players @a

schedule clear es2:end/reset/begin
schedule function es2:end/reset/tick 1