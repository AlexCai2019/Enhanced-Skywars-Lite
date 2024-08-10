execute at f-f-f-f-f run data modify storage es2:data root.game.start_resource set from block ~-4 32 ~3 Items
execute at f-f-f-f-f unless data block ~-4 32 ~3 Items run data remove storage es2:data root.game.start_resource
scoreboard players reset #edit start_resource
effect clear @a glowing
tellraw @s ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> ", {"text": "已儲存初始物資箱內容", "color": "green"}]
function es2:before/book/leaf