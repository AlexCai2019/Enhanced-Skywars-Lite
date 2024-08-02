#初次加入
clear @s
effect clear @s
effect give @s blindness 3 0 true
effect give @s absorption 1 0 true
xp set @s 0 levels
xp set @s 0 points

title @s times 5 30 5
title @s title {"text": "強化空島戰爭 Lite", "color": "aqua"}
title @s subtitle {"text": "by Alex Cai", "color": "gray"}

gamemode adventure @s
recipe give @s *

execute at f-f-f-f-f run tp @s ~ ~ ~ .0 .0
team join player