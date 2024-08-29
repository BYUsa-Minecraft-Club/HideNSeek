#give effects
effect give @a[gamemode=!creative] minecraft:saturation 40 0 true

#deal with new players
bossbar set minecraft:timer players @a
scoreboard players set @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK 0
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK styled {"color":"gray"}
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK fixed {"text":"","color":"gray"}
team join Hiders @a[team=!Seekers,team=!Hiders]

#count seekers
execute store result score starting_seekers hide_n_seek.variables if entity @a[team=Seekers]

#check if there are any seekers
execute if score starting_seekers hide_n_seek.variables matches 0 run schedule function hide_n_seek:start/wait_for_hunter 1s
execute if score starting_seekers hide_n_seek.variables matches 1.. run function hide_n_seek:grace/grace_period
