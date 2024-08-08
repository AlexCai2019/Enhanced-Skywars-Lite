gamerule randomTickSpeed 3

#重設隊伍 避免有人分好隊後退出
execute as @a run function es2:before/start/player/record_team
team empty red
team empty blue
team empty green
team empty yellow
team empty player
team empty spectator

#有關玩家的部分
execute as @a run function es2:before/start/player/root

#有關中心點的部分
execute as f-f-f-f-f at @s run function es2:before/start/center

scoreboard players set #tick time 0
scoreboard players set #time time 0
scoreboard players set #second_unit time 0
scoreboard players set #second_tens time 0
scoreboard players set #minute time 0
team modify time suffix [{"text": ": ", "color": "gray"}, {"text": "0:00", "color": "gold"}]

scoreboard players reset 隊伍數 information
scoreboard players reset 玩家人數 information
scoreboard players reset 旁觀者人數 information
scoreboard players set 存活人數 information 3
scoreboard players set 存活隊伍數 information 2

#start變為0
scoreboard players operation 00000000-0000-0000-0000-000000000000 start >< 00000000-0000-0000-0000-000000000001 start

#同隊傷害
function es2:utility/if_else {objective: friendly_fire, prefix: "function es2:before/start/team_modify {option: frendlyFire, value: ", value1: '"false"}', value2: '"true"}'}

#同隊推擠
#https://bugs.mojang.com/browse/MC-87984
function es2:utility/if_else {objective: friendly_push, prefix: "function es2:before/start/team_modify {option: collisionRule, value: ", value1: "pushOwnTeam}", value2: "always}"}

#自然回血
function es2:utility/if_else {objective: regeneration, prefix: "gamerule naturalRegeneration ", value1: "false", value2: "true"}

#摔落傷害
function es2:utility/if_else {objective: fall_damage, prefix: "gamerule fallDamage ", value1: "false", value2: "true"}

#燃燒傷害
function es2:utility/if_else {objective: fire_damage, prefix: "gamerule fireDamage ", value1: "false", value2: "true"}

#無限水源
function es2:utility/if_else {objective: water_source, prefix: "gamerule waterSourceConversion ", value1: "false", value2: "true"}

#無限岩漿源
function es2:utility/if_else {objective: lava_source, prefix: "gamerule lavaSourceConversion ", value1: "false", value2: "true"}

#弓箭合成
function es2:utility/if_else {objective: craft_projectile, prefix: "function es2:before/start/recipe/projectile {operation: ", value1: "take}", value2: "give}"}

#斧頭合成
function es2:utility/if_else {objective: craft_axe, prefix: "function es2:before/start/recipe/axe {operation: ", value1: "take}", value2: "give}"}

#盾牌合成
function es2:utility/if_else {objective: craft_shield, prefix: "function es2:before/start/recipe/shield {operation: ", value1: "take}", value2: "give}"}

scoreboard players reset * mine_stone

execute if score 00000000-0000-0000-0000-000000000001 wither matches 1 run function es2:before/start/event {objective: wither}

execute if score 00000000-0000-0000-0000-000000000001 limit matches 1 run function es2:before/start/event {objective: limit}

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run function es2:before/start/event {objective: border}