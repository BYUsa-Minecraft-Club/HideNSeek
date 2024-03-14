execute store result score starting_seekers variables if entity @a[team=Seekers]

execute if score starting_seekers variables matches 0 run schedule function hide_n_seek:wait_for_hunter 1s
execute if score starting_seekers variables matches 1.. run function hide_n_seek:grace_period
