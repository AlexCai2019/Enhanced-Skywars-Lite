gamerule sendCommandFeedback true
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

#初始物資箱
scoreboard players reset #edit start_resource
execute if score 00000000-0000-0000-0000-000000000001 start_resource matches 1 at f-f-f-f-f positioned ~-4 32 ~2 run function es2:before/start/start_resource/root

#有關中心點的部分
execute as f-f-f-f-f at @s run function es2:before/start/center

scoreboard players reset #tick start
scoreboard players reset #time start
scoreboard players set #tick time 0
scoreboard players set #time time 0
scoreboard players set #second_unit time 0
scoreboard players set #second_tens time 0
scoreboard players set #minute time 0
team modify time suffix [{text: ": ", color: "gray"}, {text: "0:00", color: "gold"}]
data modify storage es2:data root.game.time set value {m: 0, st: 0, su: 0}

scoreboard players reset 隊伍數 information
scoreboard players reset 玩家人數 information
scoreboard players reset 現在時間 information
scoreboard players reset 旁觀者人數 information
scoreboard players set 存活人數 information 4
scoreboard players set 存活隊伍數 information 3
scoreboard players set 遊戲時間 information 0

#start變為0
scoreboard players operation 00000000-0000-0000-0000-000000000000 start >< 00000000-0000-0000-0000-000000000001 start

#同隊傷害
function es2:utility/if_else {objective: friendly_fire, prefix: "function es2:before/start/team_modify {option: frendlyFire, value: ", value1: '"false"}', value2: '"true"}'}

#同隊推擠
#https://bugs.mojang.com/browse/MC/issues/MC-87984
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

#死亡棺材
function es2:utility/if_else {objective: coffin, prefix: "gamerule keepInventory ", value1: "false", value2: "true"}

#1.8戰鬥
function es2:utility/if_else {objective: old_battle, prefix: "execute as @a run attribute @s attack_speed base ", value1: "reset", value2: "set 1024"}

scoreboard players reset * first_spectator
scoreboard players reset * death
scoreboard players reset * kill_player
scoreboard players reset * mine_stone
scoreboard players reset #old_team survive
scoreboard players reset #old_player survive
scoreboard players reset #old_border border

#確認需不需要狂熱
scoreboard players set #need fanatic 1
execute if score #iron_ingot fanatic matches 0 if score #gold_ingot fanatic matches 0 if score #diamond fanatic matches 0 run scoreboard players set #need fanatic 0

execute if score 00000000-0000-0000-0000-000000000001 wither matches 1 run function es2:before/start/event {objective: wither}

execute if score 00000000-0000-0000-0000-000000000001 limit matches 1 run function es2:before/start/event {objective: limit}

execute if score 00000000-0000-0000-0000-000000000001 border matches 1 run function es2:before/start/event {objective: border}