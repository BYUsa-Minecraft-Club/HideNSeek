#add start game trigger
scoreboard objectives remove start_hide_n_seek
scoreboard objectives add start_hide_n_seek trigger "start_hide_n_seek"

#tag admins
tag @a[name="Tristanfrog"] add admin
tag @a[name="Ninjeagle"] add admin
tag @a[name="TakeABao23"] add admin

function hide_n_seek:triggers/1t_start_check
