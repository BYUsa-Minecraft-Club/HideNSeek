execute at @s run summon endermite ~ ~ ~ {Glowing:1b,DeathLootTable:"",Team:"Seekers",CustomName:'{"color":"light_purple","text":"Seeker Sidekick"}',attributes:[{id:"minecraft:generic.attack_damage",base:1}]}

#replace correct hand with air
execute unless items entity @s weapon.mainhand music_disc_mellohi[custom_model_data=10004] run execute if items entity @s weapon.offhand music_disc_mellohi[custom_model_data=10004] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand music_disc_mellohi[custom_model_data=10004] run item replace entity @s weapon.mainhand with minecraft:air
