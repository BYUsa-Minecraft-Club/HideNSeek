#set bossbar
bossbar set minecraft:timer name "Time Left Until Game End"
execute store result bossbar minecraft:timer max run scoreboard players get countdown hide_n_seek.variables
execute store result bossbar minecraft:timer value run scoreboard players get countdown hide_n_seek.variables
bossbar set minecraft:timer color red
bossbar set minecraft:timer style notched_20
bossbar set minecraft:timer players @a

#give seekers starting gear
give @a[team=Seekers] firework_rocket[enchantments={levels:{"minecraft:vanishing_curse":1},show_in_tooltip:false},enchantment_glint_override=false,fireworks={flight_duration:1}] 12

function hide_n_seek:main_game/1s_loop
function hide_n_seek:main_game/10s_loop
