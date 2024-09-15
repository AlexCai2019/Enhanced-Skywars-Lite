#先清除箱子
data modify block ~ ~ ~ Items set value []
data modify block ~-1 ~ ~ Items set value []
fill ~-1 ~ ~ ~ ~ ~ air replace chest

summon creeper ~ ~ ~ {ignited: true, Fuse: 0, CustomName: '{"text": "死亡棺材", "color": "#FF0000"}'}
kill