$scoreboard players operation 00000000-0000-0000-0000-000000000000 $(objective) >< 00000000-0000-0000-0000-000000000001 $(objective)
$function es2:utility/if_else {objective: $(objective), prefix: 'tellraw @a ["<", {"text": "強化空島戰爭 Lite", "color": "aqua"}, "> $(option) 現已設為 ", {"selector": "0-0-0-0-', value1: '0"}]', value2: '1"}]'}
function es2:before/book/leaf