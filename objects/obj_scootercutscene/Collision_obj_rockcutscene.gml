hit = 1;
vsp = -20;
hsp = 8;
scr_sound(sound_losetransformation);
instance_create(x, y, obj_bangeffect);
sprite_index = spr_player_machfreefall;
for (var i = 0; i < 4; i++)
{
	with(instance_create(x, y, obj_debris))
	{
		sprite_index = spr_introdebris;
		image_index = i;
	}
}