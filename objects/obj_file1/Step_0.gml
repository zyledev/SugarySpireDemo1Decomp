if sprite_index != spr_file1confirm
{
	if (obj_mainfartselect.selected == 0)
	{
	    sprite_index = spr_file1;
		with (obj_tv)
        {
            message = "PLAY GAME"
            showtext = 1
            alarm[0] = 2
        }
	}
	else
	    sprite_index = spr_null;
}