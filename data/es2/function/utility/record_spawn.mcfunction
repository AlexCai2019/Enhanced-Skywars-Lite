execute unless entity @s[type=marker] summon marker run return run function es2:utility/record_spawn
data modify storage es2:data root.old_spawn.x set from entity @s Pos[0]
data modify storage es2:data root.old_spawn.y set from entity @s Pos[1]
data modify storage es2:data root.old_spawn.z set from entity @s Pos[2]
execute at f-f-f-f-f run setworldspawn ~ 32 ~
kill