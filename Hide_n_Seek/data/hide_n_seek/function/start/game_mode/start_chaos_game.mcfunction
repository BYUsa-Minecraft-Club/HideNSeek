#initial setup
#function hide_n_seek:start/hide_n_seek_setup

#teams
team modify Seekers color red
team modify Hiders color gray

#scoreboard for sidebar
scoreboard objectives remove HIDE_N_SEEK
scoreboard objectives add HIDE_N_SEEK dummy "__CHAOS_HIDE_N_SEEK__"
scoreboard players set @a HIDE_N_SEEK 0
scoreboard players display numberformat @a HIDE_N_SEEK styled {"color":"gray"}
scoreboard players display numberformat @a[team=Hiders] HIDE_N_SEEK fixed {"text":"","color":"gray"}
scoreboard players set HIDERS HIDE_N_SEEK 1
scoreboard players display numberformat HIDERS HIDE_N_SEEK blank
scoreboard players set SEEKERS HIDE_N_SEEK 1313131
scoreboard players display numberformat SEEKERS HIDE_N_SEEK blank
scoreboard objectives setdisplay sidebar HIDE_N_SEEK

#create dummy item scoreboard
scoreboard objectives remove hide_n_seek.dummy_cooldown
scoreboard objectives add hide_n_seek.dummy_cooldown dummy "hide_n_seek.dummy_cooldown"
#create smoke item scoreboard
scoreboard objectives remove hide_n_seek.smoke_cooldown
scoreboard objectives add hide_n_seek.smoke_cooldown dummy "hide_n_seek.smoke_cooldown"
#create shard item scoreboard
scoreboard objectives remove hide_n_seek.shard_cooldown
scoreboard objectives add hide_n_seek.shard_cooldown dummy "hide_n_seek.shard_cooldown"
scoreboard objectives remove hide_n_seek.shard_spectator
scoreboard objectives add hide_n_seek.shard_spectator dummy "hide_n_seek.shard_spectator"
#create disguise item scoreboard
scoreboard objectives remove hide_n_seek.disguise_cooldown
scoreboard objectives add hide_n_seek.disguise_cooldown dummy "hide_n_seek.disguise_cooldown"
scoreboard objectives remove hide_n_seek.undercover
scoreboard objectives add hide_n_seek.undercover dummy "hide_n_seek.undercover"
scoreboard players set @a hide_n_seek.undercover 0
#create beeper item scoreboards
scoreboard objectives remove hide_n_seek.beeper_cooldown
scoreboard objectives add hide_n_seek.beeper_cooldown dummy "hide_n_seek.beeper_cooldown"
scoreboard objectives remove hide_n_seek.position_seeker.x
scoreboard objectives add hide_n_seek.position_seeker.x dummy "hide_n_seek.position_seeker.x"
scoreboard objectives remove hide_n_seek.position_seeker.y
scoreboard objectives add hide_n_seek.position_seeker.y dummy "hide_n_seek.position_seeker.y"
scoreboard objectives remove hide_n_seek.position_seeker.z
scoreboard objectives add hide_n_seek.position_seeker.z dummy "hide_n_seek.position_seeker.z"
scoreboard objectives remove hide_n_seek.position_hider.x
scoreboard objectives add hide_n_seek.position_hider.x dummy "hide_n_seek.position_hider.x"
scoreboard objectives remove hide_n_seek.position_hider.y
scoreboard objectives add hide_n_seek.position_hider.y dummy "hide_n_seek.position_hider.y"
scoreboard objectives remove hide_n_seek.position_hider.z
scoreboard objectives add hide_n_seek.position_hider.z dummy "hide_n_seek.position_hider.z"
scoreboard objectives remove hide_n_seek.distance_new
scoreboard objectives add hide_n_seek.distance_new dummy "hide_n_seek.distance_new"
scoreboard objectives remove hide_n_seek.distance_old
scoreboard objectives add hide_n_seek.distance_old dummy "hide_n_seek.distance_old"
scoreboard objectives remove hide_n_seek.distance_difference
scoreboard objectives add hide_n_seek.distance_difference dummy "hide_n_seek.distance_difference"
#create spiders item scoreboard
scoreboard objectives remove hide_n_seek.spiders_cooldown
scoreboard objectives add hide_n_seek.spiders_cooldown dummy "hide_n_seek.spiders_cooldown"
scoreboard objectives remove hide_n_seek.spider_count
scoreboard objectives add hide_n_seek.spider_count dummy "hide_n_seek.spider_count"
#create sidekick item scoreboard
scoreboard objectives remove hide_n_seek.sidekick_cooldown
scoreboard objectives add hide_n_seek.sidekick_cooldown dummy "hide_n_seek.sidekick_cooldown"

#add give hider hiding item trigger
scoreboard objectives remove give_hider_hiding_item
scoreboard objectives add give_hider_hiding_item trigger "give_hider_hiding_item"
#add give hider escaping item trigger
scoreboard objectives remove give_hider_escaping_item
scoreboard objectives add give_hider_escaping_item trigger "give_hider_escaping_item"
#add give seeker item trigger
scoreboard objectives remove give_seeker_item
scoreboard objectives add give_seeker_item trigger "give_seeker_item"
#add seeker item trigger
scoreboard objectives remove random_seeker
scoreboard objectives add random_seeker trigger "random_seeker"

#timer bossbar
bossbar remove minecraft:timer
bossbar add minecraft:timer "Waiting for Seeker(s)"
bossbar set minecraft:timer max 1
bossbar set minecraft:timer value 0
bossbar set minecraft:timer color pink
bossbar set minecraft:timer style progress
bossbar set minecraft:timer players @a

function hide_n_seek:start/wait_for_hunter
