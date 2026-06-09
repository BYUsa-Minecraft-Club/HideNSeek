#test commands
$say $(game_mode)

#initial setup
function hide_n_seek:start/initial_setup

#setup given from admin
$scoreboard players set grace hide_n_seek.variables $(grace_length)
scoreboard players operation grace hide_n_seek.variables *= 60 hide_n_seek.variables
$scoreboard players set countdown hide_n_seek.variables $(game_length)
scoreboard players operation countdown hide_n_seek.variables *= 60 hide_n_seek.variables

#start game mode given by admin
$function hide_n_seek:start/game_mode/start_$(game_mode)_game

#final setup
function hide_n_seek:start/final_setup

#assign hunter given by admin
$team join Seekers $(seeker)

#give hider(s) effects
execute store result storage hide_n_seek:timer grace int 1 run scoreboard players get grace hide_n_seek.variables
function hide_n_seek:start/invisiblilty with storage hide_n_seek:timer grace

function hide_n_seek:grace/1s_grace_loop
