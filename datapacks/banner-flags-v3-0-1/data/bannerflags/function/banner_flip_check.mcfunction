
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run execute if entity @e[type=item_display,tag=BF_Flag1,tag=!BF_Flipped,distance=..1.5,limit=1,sort=nearest] run function bannerflags:banner_flip
advancement revoke @a only bannerflags:bannerflip2