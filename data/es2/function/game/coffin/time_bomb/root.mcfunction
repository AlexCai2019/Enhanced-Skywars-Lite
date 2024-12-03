#刻
#沒有物品了
execute unless data block ~ ~ ~ Items[0] unless data block ~-1 ~ ~ Items[0] run fill ~-1 ~ ~ ~ ~ ~ air replace chest
#沒有箱子了
execute unless block ~ ~ ~ chest unless block ~-1 ~ ~ chest run return run kill

scoreboard players add @s time 1
execute unless score @s time matches 20 run return fail

#秒
scoreboard players remove @s time_bomb 1
execute if score @s time_bomb matches 0 run return run function es2:game/coffin/time_bomb/explosion

data modify entity @s text set value '{"score": {"name": "@s", "objective": "time_bomb"}, "color": "#FF0000", "bold": true}'
scoreboard players set @s time 0