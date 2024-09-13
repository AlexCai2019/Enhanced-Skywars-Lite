data modify storage es2:data root.game.start_resource set from block ~ ~ ~ Items
#界伏盒在Items為空的時候 是直接清除NBT的
execute unless data block ~ ~ ~ Items run data modify storage es2:data root.game.start_resource set value []