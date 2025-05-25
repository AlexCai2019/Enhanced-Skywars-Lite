scoreboard players operation #old_team survive = #team survive
$team modify team_count suffix [{text: ": ", color: "gray"}, {text: "$(team)", color: "green"}]

#只剩0或1隊
execute if score #team survive matches ..1 run function es2:end/root