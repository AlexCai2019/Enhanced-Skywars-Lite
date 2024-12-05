setblock ~ ~-1 ~ air
execute store result score @s obsidian_back run data get entity @s Item.count

#一個桶子
execute if score @s obsidian_back matches 1 run return run function es2:game/obsidian_back/one_bucket

#兩個或以上
execute store result entity @s Item.count int 1 run scoreboard players remove @s obsidian_back 1
function es2:game/obsidian_back/two_more_buckets with entity @s