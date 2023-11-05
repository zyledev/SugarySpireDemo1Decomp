pausedmusic = global.music
if (global.panic == 1 && obj_pause.pause == 0 && room != timesuproom)
{
    if (!audio_is_playing(mu_escape))
    {
        audio_stop_sound(pausedmusic)
        scr_music(66)
        pausedmusic = 66
    }
}
else if (global.panic == 0 && room == timesuproom)
    audio_stop_sound(global.music)
if (room != hub_room1)
    fadeoff = audio_sound_get_track_position(global.music)
else
    fadeoff = 0
if (room == realtitlescreen)
{
    if (!instance_exists(obj_options))
    {
        if (!audio_is_playing(mu_title))
        {
            audio_stop_all()
            scr_music(74)
            pausedmusic = 74
        }
    }
    else if instance_exists(obj_options)
    {
        if (!audio_is_playing(mu_paletteselect))
        {
            audio_stop_all()
            scr_music(27)
            pausedmusic = 27
        }
    }
}
