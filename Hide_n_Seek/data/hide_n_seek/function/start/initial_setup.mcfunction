#clear inventories
clear @a[tag=!admin]

#puts all non-admins in adventure
gamemode adventure @a[tag=!admin]
title @a[tag=!admin, gamemode=!adventure] title "Remember to switch to adventure"

#grant advancements
advancement grant @a only story/upgrade_tools
advancement grant @a only adventure/ol_betsy
advancement revoke @a only adventure/kill_a_mob
advancement grant @a only adventure/spyglass_at_dragon
advancement grant @a only adventure/spyglass_at_ghast
advancement grant @a only adventure/spyglass_at_parrot
advancement grant @a only adventure/who_needs_rockets
advancement grant @a only end/elytra
advancement grant @a only end/levitate

#gamerules
gamerule locator_bar false

#create teams
team add Seekers "Seekers"
team add Hiders "Hiders"
team modify Hiders nametagVisibility never
team join Hiders @a

#create scoreboard for game variables
scoreboard objectives remove hide_n_seek.variables
scoreboard objectives add hide_n_seek.variables dummy "hide_n_seek.variables"
scoreboard players set 60 hide_n_seek.variables 60
