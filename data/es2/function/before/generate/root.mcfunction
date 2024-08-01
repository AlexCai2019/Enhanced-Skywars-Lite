#讓盔甲座執行指令
execute unless entity @s[tag=center] as f-f-f-f-f at @s run return run function es2:before/generate/root

scoreboard players add #tick generate 1

execute if score #tick generate matches 1 run tp @s ~ 318.5 ~

#-64 ~ 319 組共384個方塊 384 / 3 = 128
execute if score #tick generate matches 2..129 run function es2:before/generate/clear

execute if score #tick generate matches 130 run fill ~34 0 ~34 ~38 0 ~38 stone
execute if score #tick generate matches 131 run fill ~-34 0 ~34 ~-38 0 ~38 stone
execute if score #tick generate matches 132 run fill ~34 0 ~-34 ~38 0 ~-38 stone
execute if score #tick generate matches 133 run fill ~-34 0 ~-34 ~-38 0 ~-38 stone

execute if score #tick generate matches 134 run fill ~34 1 ~34 ~38 1 ~38 dirt
execute if score #tick generate matches 135 run fill ~-34 1 ~34 ~-38 1 ~38 dirt
execute if score #tick generate matches 136 run fill ~34 1 ~-34 ~38 1 ~-38 dirt
execute if score #tick generate matches 137 run fill ~-34 1 ~-34 ~-38 1 ~-38 dirt

execute if score #tick generate matches 138 run fill ~34 2 ~34 ~38 2 ~38 grass_block
execute if score #tick generate matches 139 run fill ~-34 2 ~34 ~-38 2 ~38 grass_block
execute if score #tick generate matches 140 run fill ~34 2 ~-34 ~38 2 ~-38 grass_block
execute if score #tick generate matches 141 run fill ~-34 2 ~-34 ~-38 2 ~-38 grass_block

execute if score #tick generate matches 142 run setblock ~38 3 ~38 chest[facing=north]{Items: [{Slot: 0, id: "ice"}, {Slot: 1, id: "lava_bucket"}, {Slot: 2, id: "iron_ingot", count: 4}, {Slot: 3, id: "bone_block", count: 2}]}
execute if score #tick generate matches 143 run setblock ~-38 3 ~38 chest[facing=east]{Items: [{Slot: 0, id: "ice"}, {Slot: 1, id: "lava_bucket"}, {Slot: 2, id: "iron_ingot", count: 4}, {Slot: 3, id: "bone_block", count: 2}]}
execute if score #tick generate matches 144 run setblock ~38 3 ~-38 chest[facing=west]{Items: [{Slot: 0, id: "ice"}, {Slot: 1, id: "lava_bucket"}, {Slot: 2, id: "iron_ingot", count: 4}, {Slot: 3, id: "bone_block", count: 2}]}
execute if score #tick generate matches 145 run setblock ~-38 3 ~-38 chest[facing=south]{Items: [{Slot: 0, id: "ice"}, {Slot: 1, id: "lava_bucket"}, {Slot: 2, id: "iron_ingot", count: 4}, {Slot: 3, id: "bone_block", count: 2}]}

execute if score #tick generate matches 146 run setblock ~37 3 ~38 red_banner[rotation=8]{patterns: [{pattern: "skull", color: "black"}]}
execute if score #tick generate matches 147 run setblock ~-38 3 ~37 green_banner[rotation=12]{patterns: [{pattern: "skull", color: "black"}]}
execute if score #tick generate matches 148 run setblock ~38 3 ~-37 yellow_banner[rotation=4]{patterns: [{pattern: "skull", color: "black"}]}
execute if score #tick generate matches 149 run setblock ~-37 3 ~-38 blue_banner[rotation=0]{patterns: [{pattern: "skull", color: "black"}]}

execute if score #tick generate matches 150 run fill ~34 3 ~34 ~34 7 ~34 oak_log
execute if score #tick generate matches 151 run fill ~-34 3 ~34 ~-34 7 ~34 oak_log
execute if score #tick generate matches 152 run fill ~34 3 ~-34 ~34 7 ~-34 oak_log
execute if score #tick generate matches 153 run fill ~-34 3 ~-34 ~-34 7 ~-34 oak_log

execute if score #tick generate matches 154 run fill ~32 5 ~32 ~36 5 ~36 oak_leaves keep
execute if score #tick generate matches 155 run fill ~-32 5 ~32 ~-36 5 ~36 oak_leaves keep
execute if score #tick generate matches 156 run fill ~32 5 ~-32 ~36 5 ~-36 oak_leaves keep
execute if score #tick generate matches 157 run fill ~-32 5 ~-32 ~-36 5 ~-36 oak_leaves keep

execute if score #tick generate matches 158 positioned ~34 6 ~34 run function es2:before/generate/cross/big
execute if score #tick generate matches 159 positioned ~-34 6 ~34 run function es2:before/generate/cross/big
execute if score #tick generate matches 160 positioned ~34 6 ~-34 run function es2:before/generate/cross/big
execute if score #tick generate matches 161 positioned ~-34 6 ~-34 run function es2:before/generate/cross/big

execute if score #tick generate matches 162 positioned ~34 7 ~34 run function es2:before/generate/cross/small
execute if score #tick generate matches 163 positioned ~-34 7 ~34 run function es2:before/generate/cross/small
execute if score #tick generate matches 164 positioned ~34 7 ~-34 run function es2:before/generate/cross/small
execute if score #tick generate matches 165 positioned ~-34 7 ~-34 run function es2:before/generate/cross/small

execute if score #tick generate matches 166 run fill ~-1 0 ~34 ~1 0 ~36 sandstone
execute if score #tick generate matches 167 run fill ~34 0 ~-1 ~36 0 ~1 sandstone
execute if score #tick generate matches 168 run fill ~1 0 ~-34 ~-1 0 ~-36 sandstone
execute if score #tick generate matches 169 run fill ~-34 0 ~-1 ~-36 0 ~1 sandstone

execute if score #tick generate matches 170 run fill ~-1 1 ~34 ~1 3 ~36 sand
execute if score #tick generate matches 171 run fill ~34 1 ~-1 ~36 3 ~1 sand
execute if score #tick generate matches 172 run fill ~-1 1 ~-34 ~1 3 ~-36 sand
execute if score #tick generate matches 173 run fill ~-34 1 ~-1 ~-36 3 ~1 sand

execute if score #tick generate matches 174 run setblock ~35 4 ~ chest[facing=west]
execute if score #tick generate matches 175 run setblock ~ 4 ~35 chest[facing=north]
execute if score #tick generate matches 176 run setblock ~-35 4 ~ chest[facing=east]
execute if score #tick generate matches 177 run setblock ~ 4 ~-35 chest[facing=south]

execute unless score #tick generate matches 200 run return run schedule function es2:before/generate/root 1
scoreboard players reset #tick generate