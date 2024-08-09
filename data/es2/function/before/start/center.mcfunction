#先清掉告示牌 避免掉落物
execute positioned ~-1.5 33.0 ~-4.5 at @e[type=marker, tag=choose_team, dx=5, dy=0, dz=0] run setblock ~ ~ ~ air
#再清掉大廳
fill ~-5 31 ~-5 ~5 34 ~5 air
#最後再清掉指令方塊
setblock ~ 319 ~ air

data merge entity @s {ArmorItems: [{}, {}, {}, {}], HandItems: [{}, {}], CustomNameVisible: false}
tp @s ~ -63.5 ~ .0 .0