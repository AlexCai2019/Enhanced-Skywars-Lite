#https://zh.minecraft.wiki/w/經驗
execute if entity @s[level=0] run return fail
execute if entity @s[level=1] run return run scoreboard players add #points experience 7
execute if entity @s[level=2] run return run scoreboard players add #points experience 16
execute if entity @s[level=3] run return run scoreboard players add #points experience 27
execute if entity @s[level=4] run return run scoreboard players add #points experience 40
execute if entity @s[level=5] run return run scoreboard players add #points experience 55
execute if entity @s[level=6] run return run scoreboard players add #points experience 72
execute if entity @s[level=7] run return run scoreboard players add #points experience 91
scoreboard players set #points experience 100