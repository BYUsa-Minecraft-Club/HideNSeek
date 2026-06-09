#set up bossbar
bossbar add hide_n_seek:timer "Time Left to Hide"
execute store result bossbar hide_n_seek:timer max run scoreboard players get grace hide_n_seek.variables
execute store result bossbar hide_n_seek:timer value run scoreboard players get grace hide_n_seek.variables
bossbar set hide_n_seek:timer color green
bossbar set hide_n_seek:timer style notched_6
bossbar set hide_n_seek:timer players @a
