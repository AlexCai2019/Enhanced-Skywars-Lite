#先清掉告示牌 避免掉落物
fill ~-1 33 ~-4 ~4 33 ~-4 air
#再清掉大廳
fill ~-5 31 ~-5 ~5 34 ~5 air
#最後再清掉指令方塊
setblock ~ 319 ~ air

data merge entity @s {equipment: {head: {}, chest: {}, feet: {}, legs: {}, mainhand: {}, offhand: {}}, CustomNameVisible: false}
tp @s ~ -63.5 ~ .0 .0