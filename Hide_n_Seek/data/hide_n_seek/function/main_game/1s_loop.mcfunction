#decrease countdown
scoreboard players remove countdown hide_n_seek.variables 1
execute store result bossbar minecraft:timer value run scoreboard players get countdown hide_n_seek.variables
#calculate minutes and seconds
#minutes
execute store result score countdown.minutes hide_n_seek.variables run scoreboard players get countdown hide_n_seek.variables
scoreboard players operation countdown.minutes hide_n_seek.variables /= 60 hide_n_seek.variables
#seconds
execute store result score countdown.seconds hide_n_seek.variables run scoreboard players get countdown hide_n_seek.variables
scoreboard players operation countdown.seconds hide_n_seek.variables %= 60 hide_n_seek.variables
#set scores in storage for macro use
execute store result storage minecraft:hide_n_seek minutes int 1 run scoreboard players get countdown.minutes hide_n_seek.variables
execute store result storage minecraft:hide_n_seek seconds int 1 run scoreboard players get countdown.seconds hide_n_seek.variables
#set timer name
execute if score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:timer/bossbar_name_0 with storage minecraft:hide_n_seek
execute unless score countdown.seconds hide_n_seek.variables matches 0..9 run function hide_n_seek:timer/bossbar_name with storage minecraft:hide_n_seek

#decrease disguise
scoreboard players remove @a[team=Seekers,scores={hide_n_seek.undercover=1..}] hide_n_seek.undercover 1

#deal with new players
bossbar set minecraft:timer players @a
scoreboard players set @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK 0
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK styled {"color":"gray"}
scoreboard players display numberformat @a[team=!Hiders,team =!Seekers] HIDE_N_SEEK fixed {"text":"late","color":"gray"}
scoreboard players set @a[team=!Seekers,team=!Hiders] hide_n_seek.undercover 0
team join Hiders @a[team=!Seekers,team=!Hiders]
#deal with players that have been set to seekers
scoreboard players display numberformat @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK fixed {"text":"added","color":"gray"}
scoreboard players operation @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK = countdown hide_n_seek.variables

#prevent graves
experience set @a 0 levels
experience set @a 0 points

#check for end game
execute if score countdown hide_n_seek.variables matches 0 run function hide_n_seek:end/reveal_hiders
execute unless score countdown hide_n_seek.variables matches 0 run schedule function hide_n_seek:main_game/1s_loop 1s
