#set score for hunters
scoreboard players set @a[team=Seekers] HIDE_N_SEEK 1300

#set up bossbar
bossbar set minecraft:timer name "Time Left to Hide"
bossbar set minecraft:timer max 120
bossbar set minecraft:timer value 120
bossbar set minecraft:timer color green
bossbar set minecraft:timer style notched_6
bossbar set minecraft:timer players @a

#give seeker(s) effects
effect give @a[team=Seekers] minecraft:blindness 120 0 true

function hide_n_seek:1s_grace_loop
