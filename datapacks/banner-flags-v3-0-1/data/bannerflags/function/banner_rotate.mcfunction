
execute as @n[type=item_display,tag=BF_Flag1,distance=..1.5] at @s run tp @s ~ ~ ~ ~15 0
execute as @n[type=item_display,tag=BF_Flag2,distance=..1.5] at @s run tp @s ~ ~ ~ ~15 0

playsound entity.item_frame.rotate_item block @s ~ ~ ~ 100 0.8

advancement revoke @s only bannerflags:bannerrotate2

advancement grant @s only gurkis:rotateit