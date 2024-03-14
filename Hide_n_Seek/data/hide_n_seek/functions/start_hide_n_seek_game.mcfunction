#clear inventories
clear @a[gamemode=survival] minecraft:elytra
clear @a[gamemode=survival] minecraft:firework_rocket
clear @a[gamemode=survival] minecraft:crossbow

#give effects
effect give @a minecraft:saturation 40 0 true

#create teams
team add Seekers "Seekers"
team modify Seekers color red
team add Hiders "Hiders"
team modify Hiders color gray
team join Hiders @a

#create scoreboard for sidebar
scoreboard objectives remove HIDE_N_SEEK
scoreboard objectives add HIDE_N_SEEK dummy "__HIDE_N_SEEK__"
scoreboard players set @a HIDE_N_SEEK 0
scoreboard players display numberformat @a HIDE_N_SEEK styled {"color":"gray"}
scoreboard players set HIDERS HIDE_N_SEEK 1
scoreboard players display numberformat HIDERS HIDE_N_SEEK blank
scoreboard players set SEEKERS HIDE_N_SEEK 1313131
scoreboard players display numberformat SEEKERS HIDE_N_SEEK blank
scoreboard objectives setdisplay sidebar HIDE_N_SEEK

#create scoreboard for game variables
scoreboard objectives remove variables
scoreboard objectives add variables dummy "variables"
scoreboard players set 1 variables 1
scoreboard players set grace variables 120
scoreboard players set countdown variables 1200

#Timer bossbar
bossbar remove minecraft:timer
bossbar add minecraft:timer "Waiting for Hunter(s)"
bossbar set minecraft:timer max 1
bossbar set minecraft:timer value 0
bossbar set minecraft:timer color pink
bossbar set minecraft:timer style progress
bossbar set minecraft:timer players @a

#playsound minecraft:entity.enderman.scream player @a[team=Hiders] ~ ~ ~

function hide_n_seek:wait_for_hunter
