setblock ~ ~-1 ~ air
execute store result score @s obsidian_back run data get entity @s Item.count

#一個桶子
execute if score @s obsidian_back matches 1 run return run function es2:game/obsidian_back/one_bucket

#兩個或以上
execute store result entity @s Item.count int 1 run scoreboard players remove @s obsidian_back 1
data modify storage es2:data root.game.obsidian_back.pickup_delay set from entity @s PickupDelay
data modify storage es2:data root.game.obsidian_back.age set from entity @s Age
data modify storage es2:data root.game.obsidian_back.motion set from entity @s Motion

#https://bugs.mojang.com/browse/MC-259825
summon item ~ ~ ~ {Item: {id: "lava_bucket"}, Tags: ["checked", "lava_bucket"]}
execute as @e[type=item, tag=lava_bucket, distance=...5] run function es2:game/obsidian_back/copy_nbt