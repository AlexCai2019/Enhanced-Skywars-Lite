function es2:before/book/exchange {option: "開放選隊", objective: team_setting}
execute if score 00000000-0000-0000-0000-000000000001 team_setting matches 1 run return fail
#fill指令順序問題
execute at 0-0-0-0-2 run fill ~ ~ ~ ~6 ~ ~ air
execute at 0-0-0-0-2 run fill ~ ~-1 ~ ~6 ~-1 ~ air