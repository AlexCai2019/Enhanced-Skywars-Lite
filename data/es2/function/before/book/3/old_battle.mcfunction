function es2:before/book/exchange {option: "1.8戰鬥", objective: old_battle}
#直接在設定階段就生效
function es2:utility/if_else {objective: old_battle, prefix: "execute as @a run attribute @s attack_speed base ", value1: "reset", value2: "set 1024"}