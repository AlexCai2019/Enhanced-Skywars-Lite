#讓盔甲座執行指令
execute unless entity @s[tag=center] as f-f-f-f-f at @s run return run function es2:end/reset/root

gamemode spectator @a[gamemode=!spectator]

scoreboard players add #tick generate 1

execute if score #tick generate matches 1 run function es2:end/reset/begin

#-64 ~ 319 組共384個方塊 384 / 3 = 128
execute if score #tick generate matches 2..129 run function es2:end/reset/clear

execute if score #tick generate matches 130 if score 00000000-0000-0000-0000-000000000001 bedrock_floor matches 1 run fill ~-50 -64 ~-50 ~50 -64 ~50 bedrock

execute if score #tick generate matches 131 run function es2:end/reset/generate/main_island/stone
execute if score #tick generate matches 132 run function es2:end/reset/generate/main_island/dirt
execute if score #tick generate matches 133 run function es2:end/reset/generate/main_island/grass_block
execute if score #tick generate matches 134 run function es2:end/reset/generate/main_island/chest
execute if score #tick generate matches 135 run function es2:end/reset/generate/main_island/tree/root

execute if score #tick generate matches 136 run function es2:end/reset/generate/sand_island/sandstone
execute if score #tick generate matches 137 run function es2:end/reset/generate/sand_island/sand
execute if score #tick generate matches 138 run function es2:end/reset/generate/sand_island/chest

execute if score #tick generate matches 139 run function es2:end/reset/generate/hay/hay_block
execute if score #tick generate matches 140 run function es2:end/reset/generate/hay/chest

execute if score #tick generate matches 141 run function es2:end/reset/generate/center

execute if score #tick generate matches 142 run function es2:end/reset/generate/lobby

execute if score #tick generate matches 143 run setblock ~ 319 ~ repeating_command_block[facing=down]{auto: true, TrackOutput: true, Command: "execute unless entity f-f-f-f-f"}

execute if score #tick generate matches 144 run return run function es2:end/reset/resume/root

schedule function es2:end/reset/root 1