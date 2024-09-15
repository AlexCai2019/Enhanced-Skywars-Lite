#獲得箱子中的經驗
execute as @a[advancements={es2:command/obtain_experience_bottle=true}] run function es2:game/coffin/player_xp/obtain

#有棺材爆炸
execute if score 00000000-0000-0000-0000-000000000001 time_bomb matches 1 as @e[type=text_display, tag=time_bomb] at @s run function es2:game/coffin/time_bomb/root