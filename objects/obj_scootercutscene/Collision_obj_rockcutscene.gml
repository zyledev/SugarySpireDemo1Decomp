hit = 1;
vsp = -20;
hsp = 8;
scr_sound(sound_losetransformation);
instance_create(x, y, obj_bangeffect);
sprite_index = spr_player_machfreefall;
with(instance_create(x, y, obj_debris))
{
	hsp = irandom_range(-5, 10);
	vsp = irandom_range(-5, 2);
	sprite_index = spr_introdebris;
	image_index = 0;
}
with(instance_create(x, y, obj_debris))
{
	hsp = irandom_range(-5, 10);
	vsp = irandom_range(-5, 2);
	sprite_index = spr_introdebris;
	image_index = 1;
}
with(instance_create(x, y, obj_debris))
{
	hsp = irandom_range(-5, 10);
	vsp = irandom_range(-5, 2);
	sprite_index = spr_introdebris;
	image_index = 2;
}
with(instance_create(x, y, obj_debris))
{
	hsp = irandom_range(-5, 10);
	vsp = irandom_range(-5, 2);
	sprite_index = spr_introdebris;
	image_index = 3;
}
with(instance_create(x, y, obj_debris))
{
	hsp = irandom_range(-5, 10);
	vsp = irandom_range(-5, 2);
	sprite_index = spr_introdebris;
	image_index = 4;
}