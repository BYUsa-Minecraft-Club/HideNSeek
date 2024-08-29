#set up bossbar
bossbar set minecraft:timer name "Time Left to Hide"
bossbar set minecraft:timer max 120
bossbar set minecraft:timer value 120
bossbar set minecraft:timer color green
bossbar set minecraft:timer style notched_6
bossbar set minecraft:timer players @a

#give hider(s) effects
effect give @a[gamemode=!creative,team=Hiders] minecraft:invisibility 60 0 true

function hide_n_seek:grace/1s_grace_loop
