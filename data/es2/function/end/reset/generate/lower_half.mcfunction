execute if score #generate time matches 137 run return run function es2:end/reset/generate/hay_island/hay_block
execute if score #generate time matches 138 run return run function es2:end/reset/generate/hay_island/chest

execute if score #generate time matches 139 run return run function es2:end/reset/generate/center

execute if score #generate time matches 140 run return run function es2:end/reset/generate/lobby

execute if score #generate time matches 141 run return run execute if score 00000000-0000-0000-0000-000000000001 bedrock_floor matches 1 run fill ~-50 -64 ~-50 ~50 -64 ~50 bedrock

execute if score #generate time matches 142 run return run setblock ~ 319 ~ repeating_command_block[facing=down]{auto: true, TrackOutput: true, Command: "execute unless block ~ ~ ~ repeating_command_block"}

function es2:end/reset/resume/root