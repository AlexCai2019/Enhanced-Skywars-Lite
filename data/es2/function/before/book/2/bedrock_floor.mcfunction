function es2:before/book/exchange {name: '", {"translate": "block.minecraft.bedrock"}, "地板', objective: "bedrock_floor"}
#直接在設定階段就生效
execute at f-f-f-f-f run function es2:utility/if_else {objective: "bedrock_floor", prefix: "fill ~-50 -64 ~-50 ~50 -64 ~50 ", value1: "air", value2: "bedrock"}
function es2:before/book/leaf