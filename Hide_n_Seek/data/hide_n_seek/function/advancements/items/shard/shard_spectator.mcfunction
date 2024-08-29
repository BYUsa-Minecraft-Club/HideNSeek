#sound effect
execute at @a[team=Hiders,scores={hide_n_seek.shard_spectator=61..}] as @a[team=Hiders,scores={hide_n_seek.shard_spectator=61..}] run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1 1
execute at @a[team=Hiders,scores={hide_n_seek.shard_spectator=61}] as @a[team=Hiders,scores={hide_n_seek.shard_spectator=61}] run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 1 0 1
execute at @a[team=Hiders,scores={hide_n_seek.shard_spectator=41}] as @a[team=Hiders,scores={hide_n_seek.shard_spectator=41}] run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 1 0.75 1
execute at @a[team=Hiders,scores={hide_n_seek.shard_spectator=21}] as @a[team=Hiders,scores={hide_n_seek.shard_spectator=21}] run playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 1 1.5 1

#particle effect
execute at @a[team=Hiders,scores={hide_n_seek.shard_spectator=1..}] run particle minecraft:enchant ~ ~2 ~ 0 0.5 0 10 3 force

execute as @a[team=Hiders,scores={hide_n_seek.shard_spectator=1..}] run schedule function hide_n_seek:advancements/items/shard/shard_spectator 1t

#remove 1 from scoreboard shard spectator
execute as @a[team=Hiders,scores={hide_n_seek.shard_spectator=1..}] run scoreboard players remove @s hide_n_seek.shard_spectator 1
#turn player back to adventure
execute as @a[team=Hiders,scores={hide_n_seek.shard_spectator=1}] run gamemode adventure
#life cost
execute as @a[team=Hiders,scores={hide_n_seek.shard_spectator=1}] run damage @s 11 minecraft:magic
