if (ds_list_find_index(global.saveroom, id) == -1)
{
	with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_smallbreakEscape_Debris;
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_smallbreakEscape_Debris;
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_smallbreakEscape_Debris;
    with (instance_create((x + 32), (y + 32), obj_debris))
        sprite_index = spr_smallbreakEscape_Debris;
    if (audio_is_playing(sound_destroyblock1) || audio_is_playing(sound_destroyblock2))
    {
        audio_stop_sound(sound_destroyblock1);
        audio_stop_sound(sound_destroyblock2);
    }
    scr_sound(choose(sound_destroyblock1, sound_destroyblock2));
    ds_list_add(global.saveroom, id);
}
if (thesecret == 1)
{
    var lay_id = layer_get_id("Tiles_1");
    var map_id = layer_tilemap_get_id(lay_id);
    var data = tilemap_get_at_pixel(map_id, x, y);
    data = tile_set_empty(data);
    tilemap_set_at_pixel(map_id, data, x, y);
}
