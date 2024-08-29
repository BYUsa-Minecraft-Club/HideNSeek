#decrease countdown
scoreboard players remove grace hide_n_seek.variables 1
execute store result bossbar minecraft:timer value run scoreboard players get grace hide_n_seek.variables
#calculate minutes and seconds
#minutes
execute store result score grace.minutes hide_n_seek.variables run scoreboard players get grace hide_n_seek.variables
scoreboard players operation grace.minutes hide_n_seek.variables /= 60 hide_n_seek.variables
#seconds
execute store result score grace.seconds hide_n_seek.variables run scoreboard players get grace hide_n_seek.variables
scoreboard players operation grace.seconds hide_n_seek.variables %= 60 hide_n_seek.variables
#set scores in storage for macro use
execute store result storage minecraft:hide_n_seek minutes int 1 run scoreboard players get grace.minutes hide_n_seek.variables
execute store result storage minecraft:hide_n_seek seconds int 1 run scoreboard players get grace.seconds hide_n_seek.variables
#set timer name
execute if score grace.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:timer/grace_period_bossbar_name_0 with storage minecraft:hide_n_seek
execute unless score grace.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:timer/grace_period_bossbar_name with storage minecraft:hide_n_seek

#apply seeker effects
effect give @a minecraft:saturation 40 0 true
effect give @a[team=Seekers] minecraft:glowing 2 0 true
effect give @a[team=Seekers] minecraft:blindness 2 0 true
effect give @a[team=Seekers] minecraft:darkness 2 0 true
effect give @a[team=Seekers] minecraft:slowness 2 255 true
effect give @a[team=Seekers] minecraft:weakness 2 255 true

#apply hider effects
effect give @a[gamemode=!creative,team=Hiders] minecraft:invisibility 2 0 true

#deal with new players
bossbar set minecraft:timer players @a
scoreboard players set @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK 0
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK styled {"color":"gray"}
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK fixed {"text":"","color":"gray"}
scoreboard players set @a[team=!Seekers,team=!Hiders] hide_n_seek.undercover 0
team join Hiders @a[team=!Seekers,team=!Hiders]
#deal with players that have been set to seekers
scoreboard players display numberformat @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK fixed {"text":"starter","color":"gray"}
scoreboard players operation @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK = countdown hide_n_seek.variables

execute if score grace hide_n_seek.variables matches 1.. run schedule function hide_n_seek:grace/1s_grace_loop 1s
execute if score grace hide_n_seek.variables matches 0 run function hide_n_seek:main_game/seekers_start
