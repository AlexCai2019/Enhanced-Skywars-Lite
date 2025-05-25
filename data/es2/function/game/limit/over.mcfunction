title @s title ""
$title @s subtitle [{text: "請勿$(compare)於 Y = ", color: "red"}, {score: {name: "$(name)", objective: "limit"}, color: "yellow"}, " ！"]
effect give @s[predicate=!es2:wither] wither 1 1 true