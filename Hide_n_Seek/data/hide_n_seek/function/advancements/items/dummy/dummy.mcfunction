#summon dummy
execute at @s run summon mannequin ~ ~ ~ {Team:"Hiders",pose:"crouching",immovable:true,Tags:["decoy"],attributes:[{id:"minecraft:max_health",base:1}],profile:"Scyire"}
#replace correct hand with air
execute unless items entity @s weapon.mainhand music_disc_relic[custom_data={dummy:1b}] run execute if items entity @s weapon.offhand music_disc_relic[custom_data={dummy:1b}] run item replace entity @s weapon.offhand with minecraft:air
execute if items entity @s weapon.mainhand music_disc_relic[custom_data={dummy:1b}] run item replace entity @s weapon.mainhand with minecraft:air
