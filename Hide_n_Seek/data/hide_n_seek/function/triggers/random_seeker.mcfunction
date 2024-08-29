#reset random seeker trigger
execute as @a[tag=admin] run scoreboard players set @s random_seeker 0

#randomly add a seeker
team join Seekers @r[team=Hiders]
