#decrease countdown
scoreboard players operation grace variables -= 1 variables
execute store result bossbar minecraft:timer value run scoreboard players get grace variables

#apply effects
effect give @a minecraft:saturation 40 0 true
effect give @a[team=Seekers] minecraft:glowing 2 0 true
effect give @a[team=Seekers] minecraft:blindness 2 0 true
effect give @a[team=Seekers] minecraft:darkness 2 0 true
effect give @a[team=Seekers] minecraft:slowness 2 255 true
effect give @a[team=Seekers] minecraft:weakness 2 255 true

#deal with new players
bossbar set minecraft:timer players @a
team join Hiders @a[team=!Seekers,team=!Hiders]
scoreboard players set @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK 1300

execute if score grace variables matches 1.. run schedule function hide_n_seek:1s_grace_loop 1s
execute if score grace variables matches 0 run function hide_n_seek:seekers_start
