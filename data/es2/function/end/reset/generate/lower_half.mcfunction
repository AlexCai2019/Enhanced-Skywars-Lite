execute if score #generate time matches 137 run return run function es2:end/reset/generate/hay/hay_block
execute if score #generate time matches 138 run return run function es2:end/reset/generate/hay/chest

execute if score #generate time matches 139 run return run function es2:end/reset/generate/center

execute if score #generate time matches 140 run return run function es2:end/reset/generate/lobby

execute if score #generate time matches 141 if score 00000000-0000-0000-0000-000000000001 bedrock_floor matches 1 run return run fill ~-50 -64 ~-50 ~50 -64 ~50 bedrock

execute if score #generate time matches 142 run return run setblock ~ 319 ~ repeating_command_block[facing=down]{auto: true, TrackOutput: true, Command: "execute unless entity f-f-f-f-f"}

function es2:end/reset/resume/root