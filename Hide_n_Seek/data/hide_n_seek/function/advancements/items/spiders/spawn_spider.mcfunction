#spawn spider
execute at @a[team=Seekers,scores={hide_n_seek.spider_count=1..}] run summon spider ~ ~ ~ {Glowing:1b,DeathLootTable:"",Team:"Seekers",PersistenceRequired:1b,active_effects:[{id:"minecraft:wither",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:attack_damage,base:1},{id:follow_range,base:1000},{id:movement_speed,base:0.2},{id:safe_fall_distance,base:100},{id:scale,base:0.13},{id:step_height,base:0.5}]}
#check to spawn another spider
execute as @a[team=Seekers,scores={hide_n_seek.spider_count=1..}] run schedule function hide_n_seek:advancements/items/spiders/spawn_spider 1s

#decrease spider count
scoreboard players remove @a[team=Seekers,scores={hide_n_seek.spider_count=1..}] hide_n_seek.spider_count 1
