if (global.panic == 0)
{
    var roomname = room_get_name(room)
    if (string_letters(roomname) == "hubroom" || string_letters(roomname) == "hubpublic" || room == outer_room1)
    {
        if (!audio_is_playing(mu_hub))
        {
            audio_stop_all()
            scr_music(62)
            pausedmusic = 62
        }
    }
    if (string_letters(roomname) == "entryway" && obj_player.character == "P")
    {
        if (!audio_is_playing(mu_waffle))
        {
            audio_stop_all()
            scr_music(63)
            pausedmusic = 63
        }
    }
    if (string_letters(roomname) == "entryway" && obj_player.character == "N")
    {
        if (!audio_is_playing(mu_pizzanothemetune))
        {
            audio_stop_all()
            scr_music(71)
            pausedmusic = 71
        }
    }
    if (string_letters(roomname) == "entrywaysecret")
    {
        if (!audio_is_playing(mu_wafflesecret))
        {
            audio_stop_all()
            scr_music(76)
            pausedmusic = 76
        }
    }
    if (string_letters(roomname) == "tutorial")
    {
        if (!audio_is_playing(mu_tutorial))
        {
            audio_stop_all()
            scr_music(83)
            pausedmusic = 83
        }
    }
    if (string_letters(roomname) == "molasses")
    {
        if (!audio_is_playing(mu_swamp))
        {
            audio_stop_all()
            scr_music(12)
            pausedmusic = 12
        }
    }
    if (string_letters(roomname) == "steamy")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("steamy_" + string(i)) && i < 8)
            {
                if (!audio_is_playing(mu_steamy))
                {
                    audio_stop_all()
                    scr_music(64)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 64
                }
            }
            if ((roomname == ("steamy_" + string(i)) && i >= 7) || room == steamy_11_1)
            {
                if (!audio_is_playing(mu_steamyinner))
                {
                    audio_stop_all()
                    scr_music(65)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 65
                }
            }
        }
    }
    if (string_letters(roomname) == "steamysecret")
    {
        if (!audio_is_playing(mu_steamysecret))
        {
            audio_stop_all()
            scr_music(72)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 72
        }
    }
    if (string_letters(roomname) == "molassessecret")
    {
        if (!audio_is_playing(mu_swampsecret))
        {
            audio_stop_all()
            scr_music(3)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 3
        }
    }
    if (string_letters(roomname) == "devroom")
    {
        if (!audio_is_playing(mu_what))
        {
            audio_stop_all()
            scr_music(69)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 69
        }
    }
    if (string_letters(roomname) == "mines")
    {
        for (i = 0; i < 20; i++)
        {
            if (roomname == ("mines_" + string(i)) && i < 7)
            {
                if (!audio_is_playing(mu_mineshaft))
                {
                    audio_stop_all()
                    scr_music(7)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 7
                }
            }
            if (roomname == ("mines_" + string(i)) && i >= 7)
            {
                if (!audio_is_playing(mu_cobaltcaverns))
                {
                    audio_stop_all()
                    scr_music(9)
                    audio_sound_set_track_position(global.music, fadeoff)
                    pausedmusic = 9
                }
            }
        }
    }
    if (string_letters(roomname) == "minessecret")
    {
        if (!audio_is_playing(mu_minessecret))
        {
            audio_stop_all()
            scr_music(81)
            audio_sound_set_track_position(global.music, fadeoff)
            pausedmusic = 81
        }
    }
    if (string_letters(roomname) == "palroom")
    {
        if (!audio_is_playing(mu_paletteselect))
        {
            audio_stop_all()
            scr_music(27)
            pausedmusic = 27
        }
    }
}
