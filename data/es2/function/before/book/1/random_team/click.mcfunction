team empty player
team empty red
team empty blue
team empty green
team empty yellow

scoreboard players set #index team_setting -1
#不為旁觀者分隊
execute as @a[team=!spectator, sort=random] run function es2:before/book/1/random_team/iterate

tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 已完成隨機分隊"]
function es2:before/book/leaf