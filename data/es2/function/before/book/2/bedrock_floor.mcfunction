function es2:before/book/exchange {option: '", {"translate": "block.minecraft.bedrock"}, "地板', objective: bedrock_floor}

#直接在設定階段就生效
gamerule commandModificationBlockLimit 65536
execute at f-f-f-f-f run function es2:utility/if_else {objective: bedrock_floor, prefix: "fill ~-100 -64 ~-100 ~100 -64 ~100 ", value1: air, value2: bedrock}
gamerule commandModificationBlockLimit 32768