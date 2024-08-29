scoreboard players set @s hide_n_seek.hider_item 0

#dummy item
#execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":10001}}}] run function hide_n_seek:items/dummy
