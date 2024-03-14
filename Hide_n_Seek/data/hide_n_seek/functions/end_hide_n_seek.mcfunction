#remove teams
team remove Seekers
team remove Hiders

#remove scoreboards
scoreboard objectives remove HIDE_N_SEEK
scoreboard objectives remove variables

#remove bossbar
bossbar remove minecraft:timer

#remove effects
effect clear @a minecraft:glowing
effect clear @a minecraft:blindness
effect clear @a minecraft:darkness
effect clear @a minecraft:slowness
effect clear @a minecraft:weakness
effect clear @a minecraft:jump_boost
effect clear @a minecraft:speed

#end loop
schedule clear hide_n_seek:wait_for_hunter
schedule clear hide_n_seek:10s_grace_loop
schedule clear hide_n_seek:1s_loop
schedule clear hide_n_seek:10s_loop
