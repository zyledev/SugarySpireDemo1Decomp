if (obj_mainfartselect.selected == 2)
{
    sprite_index = spr_file3;
	with (obj_tv)
	{
		message = "ERASE SAVE FILE"
		showtext = 1
		alarm[0] = 2
	}
}
else
    sprite_index = spr_null;
