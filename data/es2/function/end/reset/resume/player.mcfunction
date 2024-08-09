execute at f-f-f-f-f run tp @s ~ ~ ~ .0 .0
clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
gamemode adventure @s
#有隊伍的才自動加入 沒隊伍的就要看訊息後才加入
team join player @s[team=!]