#apply effects
effect give @a[gamemode=!creative] minecraft:saturation 220 0 true

#apply seeker effects
effect give @a[team=Seekers,scores={hide_n_seek.undercover=0}] minecraft:glowing 11 0 true
effect give @a[gamemode=!creative,team=Seekers] minecraft:speed 11 1 true
effect give @a[gamemode=!creative,team=Seekers] minecraft:jump_boost 11 1 true
effect give @a[gamemode=!creative,team=Seekers] minecraft:resistance 11 3 true
effect give @a[gamemode=!creative,team=Seekers] minecraft:fire_resistance 11 0 true
effect give @a[gamemode=!creative,team=Seekers] minecraft:water_breathing 11 0 true

#give seekers gear
item replace entity @a[team=Seekers] armor.chest with elytra[unbreakable={},enchantments={"binding_curse":1,"vanishing_curse":1},tooltip_display={hidden_components:["unbreakable","enchantments"]},enchantment_glint_override=false]
give @a[team=Seekers] firework_rocket[enchantments={"vanishing_curse":1},tooltip_display={hidden_components:["enchantments"]},enchantment_glint_override=false]

#check for end game
execute unless score countdown hide_n_seek.variables matches 0 run schedule function hide_n_seek:main_game/10s_loop 10s
