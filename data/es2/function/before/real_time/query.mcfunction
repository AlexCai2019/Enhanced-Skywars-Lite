execute unless block ~ ~ ~ repeating_command_block{auto: true, TrackOutput: true, Command: "execute unless block ~ ~ ~ repeating_command_block"} run setblock ~ ~ ~ repeating_command_block[facing=down]{auto: true, TrackOutput: true, Command: "execute unless block ~ ~ ~ repeating_command_block"} destroy

data modify storage es2:data root.before.real_time.value set string block ~ ~ ~ LastOutput 10 18

function es2:before/real_time/suffix with storage es2:data root.before.real_time