#邊界已收縮完成
tellraw @a ["<", {text: "強化空島戰爭 Lite", color: "aqua"}, "> 邊界已收縮完成"]
execute as @a at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1.0 .0
bossbar set es2:border players