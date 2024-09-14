function es2:before/book/exchange {option: "1.8戰鬥", objective: 1_8}
#直接在設定階段就生效
function es2:utility/if_else {objective: 1_8, prefix: "execute as @a run attribute @s generic.attack_speed base set ", value1: 4, value2: 1024}