#timer bossbar
bossbar set hide_n_seek:timer name "Time Left Until Game End"
execute store result bossbar hide_n_seek:timer max run scoreboard players get countdown hide_n_seek.variables
execute store result bossbar hide_n_seek:timer value run scoreboard players get countdown hide_n_seek.variables
bossbar set hide_n_seek:timer color red
bossbar set hide_n_seek:timer style notched_20

#give seekers starting gear
give @a[team=Seekers] firework_rocket[enchantments={"vanishing_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false] 12

function hide_n_seek:main_game/1s_loop
function hide_n_seek:main_game/10s_loop
