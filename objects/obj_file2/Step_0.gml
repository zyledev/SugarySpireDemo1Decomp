if (obj_mainfartselect.selected == 1)
{
    sprite_index = spr_file2;
	with (obj_tv)
	{
		message = "OPTIONS"
		showtext = 1
		alarm[0] = 2
	}
}
else
    sprite_index = spr_null;
