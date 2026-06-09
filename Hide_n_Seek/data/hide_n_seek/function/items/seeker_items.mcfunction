#scoreboard players set @s hide_n_seek.seeker_item 0

#undercover
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":10001}}}] run function hide_n_seek:items/disguise

#beeper
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":10002}}}] run function hide_n_seek:items/beeper

#spiders
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":10003}}}] run function hide_n_seek:items/spiders
