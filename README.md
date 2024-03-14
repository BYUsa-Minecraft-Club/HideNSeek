# HideNSeek
Adds a function that runs a hide and seek game to take the load off the admins


Function to start a game:

/function hide_n_seek:start_hide_n_seek_game

The game starts waiting for a seeker to be assigned shown by a bossbar. During the entirety of the game, players are given saturation. A seeker can be assigned using the following commands:

/team join Seekers [player's name] (selected player)

/team join Seekers @r (random player)

Once a seeker is assigned, a default 2-minute grace period starts where the seekers are given glowing, blindness, darkness, slowness 256, and weakness 256. The timer is displayed by a green bossbar that slowly decreases. The grace period can be changed to a specified time using the following command:

/scoreboard players set grace variables X (time in seconds)

When the grace period is over, the seekers effects will end and they will be given elytra, a starting 13 rockets with 1 additional rocket being given every 10 seconds, and be given jump boost 2 and speed 2 along with the glowing which will persist. Any hider dealt damage by a seeker will join the seeker team and be given a seeker's items and effects. When everybody has been found or whenever the admin wants to end the game, the following function can be run to end the game:

/function hide_n_seek:end_hide_n_seek
