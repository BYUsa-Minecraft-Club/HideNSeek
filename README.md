# HideNSeek
Adds a function that runs a hide and seek game to take the load off the admins


Function to start a game:

/trigger start_hide_n_seek

/trigger start_hide_n_seek set X (time in ticks)

The game starts waiting for a seeker to be assigned shown by a bossbar. During the entirety of the game, players are given saturation. A seeker can be assigned using the following commands:

/trigger random_seeker

/team join Seekers [player's name] (selected player)

Once a seeker is assigned, a 2-minute grace period starts where the seekers are given glowing, blindness, darkness, slowness 256, and weakness 256. The timer is displayed by a green bossbar that slowly decreases. The grace period can be changed to a specified time using the following command:

/scoreboard players set grace variables X (time in seconds)

When the grace period is over, the seekers effects will end and they will be given elytra, a starting 13 rockets with 1 additional rocket being given every 10 seconds, and be given jump boost 2 and speed 2 along with the glowing which will persist. Any hider dealt damage by a seeker will join the seeker team and be given a seeker's items and effects. When the admin wants to end the game functions, the following function can be run to end the game:

/trigger end_hide_n_seek

During the game or during the grace period, items can be given to players to sway the game in either direction in case seekers are having too hard of a time, hiders are being found too quickly, or you want to add more complexity to the game. The following functions can be run to give a variety of items:

/trigger give_hider_hiding_item set X (1-3 where 1 is the weakest items and 3 is the strongest items)

/trigger give_hider_escaping_item set X (1-3 where 1 is the weakest items and 3 is the strongest items)

/trigger give_seeker_item set X (1-3 where 1 is the weakest items and 3 is the strongest items)

During the game, seekers can be given a hint telling them if they are within a curtain range of a hider. The following function can be run to achieve this:

/trigger block_search set X (how many blocks to search as a radius from the seekers)

During the game, hiders can be forced to move by revealing their location and giving them invisibility to hide again. The following function can be run to achieve this:

/trigger force_spot_move
