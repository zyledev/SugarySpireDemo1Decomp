if (ds_list_find_index(global.saveroom, id) == -1)
{
    for (var i = 0; i < 4; i++)
	{
		with(instance_create(x, y, obj_geyserdestroydebris))
			image_index = i;
	}
    if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
    {
        audio_stop_sound(sound_destroyblock1);
        audio_stop_sound(sound_destroyblock2);
    }
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    ds_list_add(global.saveroom, id);
}