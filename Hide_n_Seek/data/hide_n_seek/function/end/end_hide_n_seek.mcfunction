#clear inventories
clear @a[tag=!admin]

#kill all extra entities
kill @e[tag=decoy,type=armor_stand,team=Hiders]
kill @e[type=spider,team=Seekers]
kill @e[type=endermite,team=Seekers]

#remove teams
team remove Seekers
team remove Hiders

#revoke advancements
advancement revoke @a only hide_n_seek:items/disguise/disguise
advancement revoke @a only hide_n_seek:items/beeper/beeper

#remove scoreboards
scoreboard objectives remove HIDE_N_SEEK
scoreboard objectives remove hide_n_seek.variables
scoreboard objectives remove hide_n_seek.hider_item
scoreboard objectives remove hide_n_seek.seeker_item
scoreboard objectives remove hide_n_seek.dummy_cooldown
scoreboard objectives remove hide_n_seek.smoke_cooldown
scoreboard objectives remove hide_n_seek.shard_cooldown
scoreboard objectives remove hide_n_seek.shard_spectator
scoreboard objectives remove hide_n_seek.disguise_cooldown
scoreboard objectives remove hide_n_seek.undercover
scoreboard objectives remove hide_n_seek.beeper_cooldown
scoreboard objectives remove hide_n_seek.position_seeker.x
scoreboard objectives remove hide_n_seek.position_seeker.y
scoreboard objectives remove hide_n_seek.position_seeker.z
scoreboard objectives remove hide_n_seek.position_hider.x
scoreboard objectives remove hide_n_seek.position_hider.y
scoreboard objectives remove hide_n_seek.position_hider.z
scoreboard objectives remove hide_n_seek.distance_new
scoreboard objectives remove hide_n_seek.distance_old
scoreboard objectives remove hide_n_seek.distance_difference
scoreboard objectives remove hide_n_seek.spider_count
scoreboard objectives remove hide_n_seek.spiders_cooldown
scoreboard objectives remove hide_n_seek.sidekick_cooldown

#remove triggers
scoreboard objectives remove end_hide_n_seek
scoreboard objectives remove force_spot_move
scoreboard objectives remove block_search
scoreboard objectives remove give_hider_hiding_item
scoreboard objectives remove give_hider_escaping_item
scoreboard objectives remove give_seeker_item
scoreboard objectives remove random_seeker

#remove bossbar
bossbar remove minecraft:timer

#remove effects
effect clear @a minecraft:glowing
effect clear @a minecraft:blindness
effect clear @a minecraft:darkness
effect clear @a minecraft:slowness
effect clear @a minecraft:weakness
effect clear @a minecraft:jump_boost
effect clear @a minecraft:speed

#end loops
schedule clear hide_n_seek:start/wait_for_hunter
schedule clear hide_n_seek:grace/1s_grace_loop
schedule clear hide_n_seek:main_game/1s_loop
schedule clear hide_n_seek:main_game/10s_loop

#end item loops
#schedule clear hide_n_seek:items/item_use_check
schedule clear hide_n_seek:advancements/items/shard/shard_spectator

#end trigger loops
schedule clear hide_n_seek:triggers/1t_trigger_check

#add start game trigger
scoreboard objectives remove start_hide_n_seek
scoreboard objectives add start_hide_n_seek trigger "start_hide_n_seek"
function hide_n_seek:triggers/1t_start_check
