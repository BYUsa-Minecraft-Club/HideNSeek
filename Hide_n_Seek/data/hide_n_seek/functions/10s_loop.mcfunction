#apply effects
effect give @a minecraft:saturation 220 0 true
effect give @a[team=Seekers] minecraft:glowing 11 0 true
effect give @a[team=Seekers] minecraft:speed 11 1 true
effect give @a[team=Seekers] minecraft:jump_boost 11 1 true

#give seekers gear
item replace entity @a[team=Seekers] armor.chest with minecraft:elytra{Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],Unbreakable:1b}
give @a[team=Seekers] minecraft:firework_rocket

#deal with new players
bossbar set minecraft:timer players @a
team join Hiders @a[team=!Seekers,team=!Hiders]
scoreboard players set @a[team=Seekers,scores={HIDE_N_SEEK=0}] HIDE_N_SEEK 1300

schedule function hide_n_seek:10s_loop 10s
