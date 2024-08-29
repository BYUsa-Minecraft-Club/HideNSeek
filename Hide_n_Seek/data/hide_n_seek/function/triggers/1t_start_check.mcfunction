#update start game triggers for all players
scoreboard players enable @a[tag=admin] start_hide_n_seek
scoreboard players reset @a[tag=!admin] start_hide_n_seek

#check if someone started the game
execute as @a[tag=admin] run execute unless score @s start_hide_n_seek matches 0 run function hide_n_seek:start/start_hide_n_seek_game

schedule function hide_n_seek:triggers/1t_start_check 1t
