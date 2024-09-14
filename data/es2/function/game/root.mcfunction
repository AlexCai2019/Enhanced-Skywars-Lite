scoreboard players add #tick time 1
execute if score #tick time matches 20 run function es2:game/second/root

execute as @a run function es2:game/player/root

#黑曜石恢復
execute if score 00000000-0000-0000-0000-000000000001 obsidian_back matches 1 as @e[type=item] run function es2:game/obsidian_back/item

#禁止弓箭合成
execute if score 00000000-0000-0000-0000-000000000000 craft_projectile matches 1 as @a[advancements={es2:command/obtain_arrow=true}] run function es2:game/craft_projectile/remove_arrow

#狂熱
execute if score #need fanatic matches 1 as @a[scores={mine_stone=1..}] run function es2:game/mine_stone/root

#1.8戰鬥
execute if score 00000000-0000-0000-0000-000000000001 1_8 matches 1 as @a[gamemode=!spectator] if items entity @s weapon #es2:weapon unless items entity @s weapon #es2:weapon[custom_data~{modified: true}] run function es2:game/player/modify_weapon

#獲得箱子中的經驗
execute if score 00000000-0000-0000-0000-000000000001 coffin matches 1 as @a[advancements={es2:command/obtain_experience_bottle=true}] run function es2:game/player/player_xp/obtain

#每隊存活人數
execute store result score 00000000-0000-0000-0000-000000000002 survive if entity @a[team=red, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000003 survive if entity @a[team=blue, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000004 survive if entity @a[team=green, gamemode=survival]
execute store result score 00000000-0000-0000-0000-000000000005 survive if entity @a[team=yellow, gamemode=survival]
title @a actionbar [{"text": "紅隊", "color": "red"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000002", "objective": "survive"}}]}, {"text": " 藍隊", "color": "blue"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000003", "objective": "survive"}}]}, {"text": " 綠隊", "color": "green"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000004", "objective": "survive"}}]}, {"text": " 黃隊", "color": "yellow"}, {"text": ": ", "color": "gray", "extra": [{"score": {"name": "00000000-0000-0000-0000-000000000005", "objective": "survive"}}]}]

#存活隊伍數
execute store result storage es2:data root.game.information.team int 1 store result score #team survive at f-f-f-f-f positioned ~-1.5 33.0 ~-4.5 if entity @e[type=marker, tag=choose_team, scores={survive=1..}, dx=5, dy=0, dz=0]
#存活人數
execute store result storage es2:data root.game.information.player int 1 if entity @a[gamemode=!spectator]
execute store result storage es2:data root.game.information.border int 1 run worldborder get
function es2:game/information with storage es2:data root.game.information

execute if score #team survive matches ..1 run function es2:end/root