execute unless entity @s[type=marker] summon marker run return run function es2:utility/record_spawn
#雖然不太可能有小數點 不過既然setworldspaen只接受int 所以用execute store
execute store result storage es2:data root.old_spawn.x int 1 run data get entity @s Pos[0]
execute store result storage es2:data root.old_spawn.y int 1 run data get entity @s Pos[1]
execute store result storage es2:data root.old_spawn.z int 1 run data get entity @s Pos[2]
#儲存好了就可以用setworldspawn了
execute at f-f-f-f-f run setworldspawn ~ 32 ~
kill