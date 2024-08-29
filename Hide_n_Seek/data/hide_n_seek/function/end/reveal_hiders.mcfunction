#change team colors
team modify Hiders color green
team modify Seekers color dark_red
#make hiders unable to be turned into seekers
scoreboard players set @a[team=Hiders] HIDE_N_SEEK -1
#declare victory for hiders
scoreboard players display numberformat @a[team=Hiders] HIDE_N_SEEK fixed {"text":"victory","color":"gray"}
#give effect to hiders
effect give @a[gamemode=!creative,team=Hiders] minecraft:glowing infinite 0 true
