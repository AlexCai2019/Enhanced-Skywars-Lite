execute store result score @s limit run data get entity @s Pos[1]
execute if score @s limit > #highest limit run function es2:game/limit/over {compare: "高", name: "#highest"}
execute if score @s limit < #lowest limit run function es2:game/limit/over {compare: "低", name: "#lowest"}