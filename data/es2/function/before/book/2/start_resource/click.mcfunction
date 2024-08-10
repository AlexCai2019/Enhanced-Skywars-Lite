function es2:before/book/exchange {option: "初始物資", objective: start_resource}
execute if score 00000000-0000-0000-0000-000000000000 start_resource matches 1 run return run function es2:before/book/2/start_resource/disable
execute at f-f-f-f-f positioned ~-4 32 ~3 run function es2:before/book/2/start_resource/enable