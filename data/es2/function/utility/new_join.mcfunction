#初次加入
clear @s
effect clear @s
effect give @s blindness 2 0 true
effect give @s absorption 1 0 true
xp set @s 0 levels
xp set @s 0 points

title @s times 5 30 5
title @s title {"text": "強化空島戰爭 Lite", "color": "aqua"}
title @s subtitle {"text": "by Alex Cai", "color": "gray"}

#戰鬥模式
function es2:utility/if_else {objective: 1_8, prefix: "function es2:before/start/battle_style/1_", value1: 9, value2: 8}

$gamemode $(gamemode) @s
recipe give @s *

execute at f-f-f-f-f run tp @s ~ ~ ~ .0 .0
$team join $(team)