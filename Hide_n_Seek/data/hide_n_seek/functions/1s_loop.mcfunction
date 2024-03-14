#decrease countdown
scoreboard players operation countdown variables -= 1 variables
execute store result bossbar minecraft:timer value run scoreboard players get countdown variables

#check for end game
#execute if 

execute unless score countdown variables matches 0 run schedule function hide_n_seek:1s_loop 1s
