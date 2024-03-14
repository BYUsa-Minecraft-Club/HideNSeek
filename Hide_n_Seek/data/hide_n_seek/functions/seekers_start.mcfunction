#set bossbar
bossbar set minecraft:timer name "Time Left Until Game End"
bossbar set minecraft:timer max 1200
bossbar set minecraft:timer value 1200
bossbar set minecraft:timer color red
bossbar set minecraft:timer style notched_20
bossbar set minecraft:timer players @a

#give seekers starting gear
give @a[team=Seekers] minecraft:firework_rocket 12

function hide_n_seek:1s_loop
function hide_n_seek:10s_loop
