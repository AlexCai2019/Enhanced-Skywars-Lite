execute unless block ~ ~ ~ repeating_command_block{auto: true, TrackOutput: true, Command: "execute unless entity f-f-f-f-f"} run setblock ~ ~ ~ repeating_command_block[facing=down]{auto: true, TrackOutput: true, Command: "execute unless entity f-f-f-f-f"} destroy

data modify storage es2:data root.before.real_time.h set string block ~ ~ ~ LastOutput 10 12
data modify storage es2:data root.before.real_time.m set string block ~ ~ ~ LastOutput 13 15
data modify storage es2:data root.before.real_time.s set string block ~ ~ ~ LastOutput 16 18

function es2:before/real_time/suffix with storage es2:data root.before.real_time